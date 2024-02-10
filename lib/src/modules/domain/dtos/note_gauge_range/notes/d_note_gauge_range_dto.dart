import 'package:instrument_tuner/src/modules/domain/dtos/gauge_range/base_gauge_range_dto.dart';
import 'package:instrument_tuner/src/modules/domain/dtos/note_gauge_range/base_note_gauge_range_dto.dart';

class DNoteGaugeRangeDto extends BaseNoteGaugeRange {
  DNoteGaugeRangeDto({
    BaseGaugeRangeDto? first,
    BaseGaugeRangeDto? second,
    BaseGaugeRangeDto? third,
    BaseGaugeRangeDto? fourth,
    BaseGaugeRangeDto? fifth
  }) : super(
        first: first ?? BaseGaugeRangeDto(start: 76.8, end: 106.8),
        second: second ?? BaseGaugeRangeDto(start: 106.8, end: 136.8),
        third: third ?? BaseGaugeRangeDto(start: 136.8, end: 156.8),
        fourth: fourth ?? BaseGaugeRangeDto(start: 156.8, end: 186.8),
        fifth: fifth ?? BaseGaugeRangeDto(start: 186.8, end: 216.8),
      );
}