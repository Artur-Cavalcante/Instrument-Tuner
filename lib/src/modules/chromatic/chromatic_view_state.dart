// import 'dart:typed_data';
//
// import 'package:flutter/material.dart';
// import 'package:flutter_audio_capture/flutter_audio_capture.dart';
// import 'package:pitch_detector_dart/pitch_detector.dart';
// import 'package:pitchupdart/pitch_handler.dart';
// import 'package:pitchupdart/instrument_type.dart';
//
// import 'package:instrument_tuner/src/chromatic/chromatic_view.dart';
//
// class ChromaticViewState extends State<ChromaticView> {
//   final _audioRecorder = FlutterAudioCapture();
//
//   final pitchDetectorDart = PitchDetector(44100, 2000);
//   final pitchupDart = PitchHandler(InstrumentType.guitar);
//
//   String note = "";
//   String status = "Click on start";
//
//   Future<void> _startCapture() async {
//     await _audioRecorder.start(listener, onError,
//         sampleRate: 44100, bufferSize: 3000);
//
//     setState(() {
//       note = "";
//       status = "Play something";
//     });
//   }
//
//   void listener(dynamic obj) {
//     Float64List buffer = Float64List.fromList(obj.cast<double>());
//     final List<double> audioSample = buffer.toList();
//
//     final result = pitchDetectorDart.getPitch(audioSample);
//
//     print(result.probability);
//     if (result.pitched) {
//       final handledPitchResult = pitchupDart.handlePitch(result.pitch);
//
//       setState(() {
//         note = handledPitchResult.note;
//         status = handledPitchResult.tuningStatus.toString();
//       });
//     }
//   }
//
//   void onError(Object e) {
//     print(e);
//   }
//
//   Future<void> _stopCapture() async {
//     await _audioRecorder.stop();
//
//     setState(() {
//       note = "";
//       status = "Click on start";
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: const Text("Chormatic")),
//         body: Center(
//             child: Column(
//           children: [
//             Center(
//                 child: Text(
//               note,
//               style: const TextStyle(
//                   color: Colors.black87,
//                   fontSize: 25.0,
//                   fontWeight: FontWeight.bold),
//             )),
//             const Spacer(),
//             Center(
//                 child: Text(
//               status,
//               style: const TextStyle(
//                   color: Colors.black87,
//                   fontSize: 14.0,
//                   fontWeight: FontWeight.bold),
//             )),
//             Expanded(
//                 child: Row(children: [
//               Expanded(
//                   child: Center(
//                       child: FloatingActionButton(
//                 onPressed: _startCapture,
//                 child: const Text("Start"),
//               ))),
//               Expanded(
//                   child: Center(
//                       child: FloatingActionButton(
//                 onPressed: _stopCapture,
//                 child: const Text("Stop"),
//               )))
//             ]))
//           ],
//         )));
//   }
// }
//
