import 'package:instrument_tuner/src/modules/domain/dtos/gauge_range/base_gauge_range_dto.dart';
import 'package:instrument_tuner/src/modules/domain/dtos/note_gauge_range/base_note_gauge_range_dto.dart';

class BNoteGaugeRangeDto extends BaseNoteGaugeRange {
  BNoteGaugeRangeDto({
    BaseGaugeRangeDto? first,
    BaseGaugeRangeDto? second,
    BaseGaugeRangeDto? third,
    BaseGaugeRangeDto? fourth,
    BaseGaugeRangeDto? fifth
  }) : super(
        first: first ?? BaseGaugeRangeDto(start: 176.9, end: 206.9),
        second: second ?? BaseGaugeRangeDto(start: 206.9, end: 236.9),
        third: third ?? BaseGaugeRangeDto(start: 236.9, end: 256.9),
        fourth: fourth ?? BaseGaugeRangeDto(start: 256.9, end: 286.9),
        fifth: fifth ?? BaseGaugeRangeDto(start: 286.9, end: 316.9),
      );
}