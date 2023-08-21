import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class RadialChromaticRange extends StatelessWidget {
  const RadialChromaticRange({
    super.key,
  });

  @override
  GaugeRange build(BuildContext context) {
    return GaugeRange(
        startValue: -50,
        endValue: 10,
        startWidth: 0.265,
        sizeUnit: GaugeSizeUnit.factor,
        endWidth: 0.265,
        color: const Color.fromRGBO(195, 35, 69, 0.75)
    );
  }
}