import 'package:instrument_tuner/src/modules/domain/dtos/gauge_range/base_gauge_range_dto.dart';
import 'package:instrument_tuner/src/modules/domain/dtos/note_gauge_range/base_note_gauge_range_dto.dart';

class GNoteGaugeRangeDto extends BaseNoteGaugeRange {
  GNoteGaugeRangeDto({
    BaseGaugeRangeDto? first,
    BaseGaugeRangeDto? second,
    BaseGaugeRangeDto? third,
    BaseGaugeRangeDto? fourth,
    BaseGaugeRangeDto? fifth
  }) : super(
        first: first ?? BaseGaugeRangeDto(start: 126, end: 156),
        second: second ?? BaseGaugeRangeDto(start: 156, end: 186),
        third: third ?? BaseGaugeRangeDto(start: 186, end: 206),
        fourth: fourth ?? BaseGaugeRangeDto(start: 206, end: 236),
        fifth: fifth ?? BaseGaugeRangeDto(start: 236, end: 266),
      );
}