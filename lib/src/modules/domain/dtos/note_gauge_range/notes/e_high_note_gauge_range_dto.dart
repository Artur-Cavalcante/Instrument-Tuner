import 'package:instrument_tuner/src/modules/domain/dtos/gauge_range/base_gauge_range_dto.dart';
import 'package:instrument_tuner/src/modules/domain/dtos/note_gauge_range/base_note_gauge_range_dto.dart';

class EHighNoteGaugeRangeDto extends BaseNoteGaugeRange {
  EHighNoteGaugeRangeDto({
    BaseGaugeRangeDto? first,
    BaseGaugeRangeDto? second,
    BaseGaugeRangeDto? third,
    BaseGaugeRangeDto? fourth,
    BaseGaugeRangeDto? fifth
  }) : super(
        first: first ?? BaseGaugeRangeDto(start: 258.6, end: 288.6),
        second: second ?? BaseGaugeRangeDto(start: 288.6, end: 318.6),
        third: third ?? BaseGaugeRangeDto(start: 318.6, end: 338.6),
        fourth: fourth ?? BaseGaugeRangeDto(start: 338.6, end: 368.6),
        fifth: fifth ?? BaseGaugeRangeDto(start: 368.6, end: 398.6),
      );
}
