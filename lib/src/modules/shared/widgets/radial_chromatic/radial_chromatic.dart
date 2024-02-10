import 'package:flutter/material.dart';
import 'package:instrument_tuner/src/modules/domain/dtos/note_gauge_range/base_note_gauge_range_dto.dart';

import 'widgets/base_radial_chromatic.dart';

class RadialChromatic extends StatelessWidget {
  RadialChromatic({
    super.key,
    this.radialValue = 0,
    this.annotationToGauge = "-",
    this.noteGaugeRange
  });

  double radialValue;
  String annotationToGauge;

  BaseNoteGaugeRange? noteGaugeRange;

  @override
  Widget build(BuildContext context) {
    return BaseRadialChromatic(
      radialValue: radialValue,
      annotationToGauge: annotationToGauge,
      radialAxisMinimum: noteGaugeRange?.first.start ?? BaseNoteGaugeRange.firstDefault.start,
      radialAxisMaximum: noteGaugeRange?.fifth.end ?? BaseNoteGaugeRange.fifthDefault.end,
      startValueFirstGauge: noteGaugeRange?.first.start ?? BaseNoteGaugeRange.firstDefault.start,
      endValueFirstGauge: noteGaugeRange?.first.end ?? BaseNoteGaugeRange.firstDefault.end,
      startValueSecondGauge: noteGaugeRange?.second.start ?? BaseNoteGaugeRange.secondDefault.start,
      endValueSecondGauge: noteGaugeRange?.second.end ?? BaseNoteGaugeRange.secondDefault.end,
      startValueThirdGauge: noteGaugeRange?.third.start ?? BaseNoteGaugeRange.thirdDefault.start,
      endValueThirdGauge: noteGaugeRange?.third.end ?? BaseNoteGaugeRange.thirdDefault.end,
      startValueFourthGauge: noteGaugeRange?.fourth.start ?? BaseNoteGaugeRange.fourthDefault.start,
      endValueFourthGauge: noteGaugeRange?.fourth.end ?? BaseNoteGaugeRange.fourthDefault.end,
      startValueFifthGauge: noteGaugeRange?.fifth.start ?? BaseNoteGaugeRange.fifthDefault.start,
      endValueFifthGauge: noteGaugeRange?.fifth.end ?? BaseNoteGaugeRange.fifthDefault.end
    );
  }
}