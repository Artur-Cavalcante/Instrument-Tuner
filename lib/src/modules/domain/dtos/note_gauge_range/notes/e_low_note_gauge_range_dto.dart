import 'package:instrument_tuner/src/modules/domain/dtos/gauge_range/base_gauge_range_dto.dart';
import 'package:instrument_tuner/src/modules/domain/dtos/note_gauge_range/base_note_gauge_range_dto.dart';

class ELowNoteGaugeRangeDto extends BaseNoteGaugeRange {
  ELowNoteGaugeRangeDto({
    BaseGaugeRangeDto? first,
    BaseGaugeRangeDto? second,
    BaseGaugeRangeDto? third,
    BaseGaugeRangeDto? fourth,
    BaseGaugeRangeDto? fifth
  }) : super(
        first: first ?? BaseGaugeRangeDto(start: -10, end: 10),
        second: second ?? BaseGaugeRangeDto(start: 10, end: 40),
        third: third ?? BaseGaugeRangeDto(start: 40, end: 60),
        fourth: fourth ?? BaseGaugeRangeDto(start: 60, end: 90),
        fifth: fifth ?? BaseGaugeRangeDto(start: 90, end: 120),
      );
}