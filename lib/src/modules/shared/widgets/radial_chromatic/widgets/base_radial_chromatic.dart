import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import 'radial_axis_chromatic.dart';

class BaseRadialChromatic extends StatelessWidget {
  const BaseRadialChromatic({super.key});

  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
      animationDuration: 3500,
      enableLoadingAnimation: true,
      axes: <RadialAxis>[
        const RadialAxisChromatic()
              .build(context)
      ],
    );
  }
}
