import 'package:flutter/material.dart';

import 'dart:typed_data';

import 'package:flutter_audio_capture/flutter_audio_capture.dart';
import 'package:instrument_tuner/src/modules/domain/dtos/note_gauge_range/base_note_gauge_range_dto.dart';
import 'package:instrument_tuner/src/modules/domain/dtos/note_gauge_range/note_gauge_range_dto.dart';
import 'package:instrument_tuner/src/modules/domain/enumerators/note/note.dart';
import 'package:instrument_tuner/src/modules/shared/widgets/radial_chromatic/radial_chromatic.dart';
import 'package:pitch_detector_dart/pitch_detector.dart';
import 'package:pitchupdart/pitch_handler.dart';
import 'package:pitchupdart/instrument_type.dart';

import 'chromatic_view.dart';

class ChromaticViewState extends State<ChromaticView> {
  final FlutterAudioCapture _audioRecorder = FlutterAudioCapture();
  final PitchDetector pitchDetectorDart = PitchDetector(44100, 2000);
  final PitchHandler pitchupDart = PitchHandler(InstrumentType.guitar);

  String note = "";
  String status = "Click on start";
  double pitchValue = 0;
  BaseNoteGaugeRange? noteGaugeRange;
  Note finalNote = Note.E;

  @override
  void initState() {
    print("INICIANDO");
    _startCapture();
    print("FIM INICIANDO");

    super.initState();
  }

  Future<void> _startCapture() async {
    await _audioRecorder.start(listener, onError,
        sampleRate: 44100, bufferSize: 3000);

    setState(() {
      note = "";
      status = "Play something";
    });
  }

  void listener(dynamic obj) {
    Float64List buffer = Float64List.fromList(obj.cast<double>());
    final List<double> audioSample = buffer.toList();

    final result = pitchDetectorDart.getPitch(audioSample);

    if (result.pitched) {
      final handledPitchResult = pitchupDart.handlePitch(result.pitch);

      print("NOTEPITCH ${handledPitchResult.note}");
      BaseNoteGaugeRange? noteGaugeRange;

      if(handledPitchResult.note.isNotEmpty) {
        noteGaugeRange = GetNoteGaugeRange(handledPitchResult.note, result.pitch);
      }

      print("RANGE GAUGE ${noteGaugeRange?.first.start}");

      setState(() {
        note = handledPitchResult.note;
        status = handledPitchResult.tuningStatus.toString();
        pitchValue = result.pitch;
        noteGaugeRange = noteGaugeRange;
      });
    }
  }
  
  BaseNoteGaugeRange? GetNoteGaugeRange(String note, double pitchValue){
    Note? result = GetConvertedNote(note);

    if(result != null) {
      finalNote = result;
    }
    print("FINAL NOTEEE: ${result} ${finalNote}");
    return NoteGaugeRange(finalNote, pitchValue).range;

  }

  Note? GetConvertedNote(String note){
    Iterable<Note> result = Note
        .values
        .where((enumerator) => enumerator.label == note);

    return result.firstOrNull;
  }

  void onError(Object e) {
    print(e);
  }

  Future<void> _stopCapture() async {//TODO limpar remover
    await _audioRecorder.stop();

    setState(() {
      note = "";
      status = "Click on start";
    });
  }


  @override
  Widget build(BuildContext context) {
    // print("PITCH VALUE"); //TODO remover
    // print(pitchValue);
    //
    // print("STATUS");
    // print(status);
    //
    // print("NOTE");
    // print(note);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Instrument Tuner"),
        backgroundColor: const Color.fromRGBO(20, 20, 33, 20),
        centerTitle: true,
      ),//TODO ADD AQUI O TOM COMO TEXTO
      body: Center(
          child: RadialChromatic(
              radialValue: pitchValue,
              annotationToGauge: note,
              noteGaugeRange: noteGaugeRange
          )
      ),
      backgroundColor: const Color.fromRGBO(20, 20, 33, 20),
    );
  }
}