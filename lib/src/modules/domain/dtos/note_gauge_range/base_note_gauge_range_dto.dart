import 'package:instrument_tuner/src/modules/domain/dtos/gauge_range/base_gauge_range_dto.dart';

class BaseNoteGaugeRange {
  BaseNoteGaugeRange(
      {
        required this.first,
        required this.second,
        required this.third,
        required this.fourth,
        required this.fifth
      }
  );

  BaseGaugeRangeDto first = firstDefault;
  BaseGaugeRangeDto second = secondDefault;
  BaseGaugeRangeDto third = thirdDefault;
  BaseGaugeRangeDto fourth = fourthDefault;
  BaseGaugeRangeDto fifth = fifthDefault;

  static BaseGaugeRangeDto firstDefault = BaseGaugeRangeDto(start: -10, end: 10);
  static BaseGaugeRangeDto secondDefault = BaseGaugeRangeDto(start: 10, end: 40);
  static BaseGaugeRangeDto thirdDefault = BaseGaugeRangeDto(start: 40, end: 60);
  static BaseGaugeRangeDto fourthDefault = BaseGaugeRangeDto(start: 60, end: 90);
  static BaseGaugeRangeDto fifthDefault = BaseGaugeRangeDto(start: 90, end: 120);
}
