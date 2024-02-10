import 'package:instrument_tuner/src/modules/domain/dtos/gauge_range/base_gauge_range_dto.dart';
import 'package:instrument_tuner/src/modules/domain/dtos/note_gauge_range/base_note_gauge_range_dto.dart';

class ANoteGaugeRangeDto extends BaseNoteGaugeRange {
  ANoteGaugeRangeDto({
    BaseGaugeRangeDto? first,
    BaseGaugeRangeDto? second,
    BaseGaugeRangeDto? third,
    BaseGaugeRangeDto? fourth,
    BaseGaugeRangeDto? fifth
  }) : super(
        first: first ?? BaseGaugeRangeDto(start: 50, end: 70),
        second: second ?? BaseGaugeRangeDto(start: 70, end: 100),
        third: third ?? BaseGaugeRangeDto(start: 100, end: 120),
        fourth: fourth ?? BaseGaugeRangeDto(start: 120, end: 150),
        fifth: fifth ?? BaseGaugeRangeDto(start: 150, end: 180),
      );
}