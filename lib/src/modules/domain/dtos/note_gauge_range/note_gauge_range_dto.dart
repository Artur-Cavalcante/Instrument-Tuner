import 'package:instrument_tuner/src/modules/domain/dtos/note_gauge_range/base_note_gauge_range_dto.dart';
import 'package:instrument_tuner/src/modules/domain/dtos/note_gauge_range/notes/e_low_note_gauge_range_dto.dart';
import 'package:instrument_tuner/src/modules/domain/enumerators/note/note.dart';

import 'notes/a_note_gauge_range_dto.dart';
import 'notes/b_note_gauge_range_dto.dart';
import 'notes/d_note_gauge_range_dto.dart';
import 'notes/e_high_note_gauge_range_dto.dart';
import 'notes/g_note_gauge_range_dto.dart';

class NoteGaugeRange {
  NoteGaugeRange(Note note, double pitchValue){
    this.note = note;
    this.pitchValue = pitchValue;
    this.range = getRange(this.note);
  }

  Note note = Note.E;
  BaseNoteGaugeRange? range;
  double pitchValue = 82.4;

  BaseNoteGaugeRange getRange(Note note){
    switch (note){
        case Note.E:{
          if(pitchValue > 180){
            return EHighNoteGaugeRangeDto();
          }

          return ELowNoteGaugeRangeDto();
        }
        case Note.A:
          return ANoteGaugeRangeDto();
        case Note.D:
          return DNoteGaugeRangeDto();
        case Note.G:
          return GNoteGaugeRangeDto();
        case Note.B:
          return BNoteGaugeRangeDto();
      default:
        return ELowNoteGaugeRangeDto();
    }
  }
}
