import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class RadialChromaticAnnotation extends StatelessWidget {
  const RadialChromaticAnnotation({
    super.key,
  });

  @override
  GaugeAnnotation build(BuildContext context) {
    return const GaugeAnnotation(
        angle: 90,
        positionFactor: 0.35,
        widget: Text('D',
            style:
            TextStyle(color: Color(0xFFF8B195), fontSize: 16)
        )
    );
  }
}