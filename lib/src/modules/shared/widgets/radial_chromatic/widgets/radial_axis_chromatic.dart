import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import 'radial_chromatic_needle_pointer.dart';

class RadialAxisChromatic extends StatelessWidget {
  const RadialAxisChromatic({
    super.key,
  });

  @override
  RadialAxis build(BuildContext context) {
    return RadialAxis(
        minimum: -50,
        maximum: 150,
        interval: 20,
        minorTicksPerInterval: 1,
        tickOffset: 2,
        showAxisLine: false,
        radiusFactor: 0.9,
        showLabels: false,
        ranges: <GaugeRange>[
          // const RadialAxisRange().build(context),
          // const RadialAxisRange().build(context),
          // const RadialAxisRange().build(context),
          // const RadialAxisRange().build(context),
          // const RadialAxisRange().build(context),
          //TODO mudar
          GaugeRange(
          startValue: -50,
          endValue: 10,
          startWidth: 0.265,
          sizeUnit: GaugeSizeUnit.factor,
          endWidth: 0.265,
          color: const Color.fromRGBO(195, 35, 69, 0.75)
          ),
          GaugeRange(
              startValue: 10,
              endValue: 40,
              startWidth: 0.265,
              sizeUnit: GaugeSizeUnit.factor,
              endWidth: 0.265,
              color: const Color.fromRGBO(237, 118, 21, 0.75)
          ),
          GaugeRange(
              startValue: 40,
              endValue: 60,
              startWidth: 0.265,
              sizeUnit: GaugeSizeUnit.factor,
              endWidth: 0.265,
              color: const Color.fromRGBO(38, 194, 39, 0.75)
          ),
          GaugeRange(
              startValue: 60,
              endValue: 90,
              startWidth: 0.265,
              sizeUnit: GaugeSizeUnit.factor,
              endWidth: 0.265,
              color: const Color.fromRGBO(237, 118, 21, 0.75)
          ),
          GaugeRange(
              startValue: 90,
              endValue: 150,
              startWidth: 0.265,
              sizeUnit: GaugeSizeUnit.factor,
              endWidth: 0.265,
              color: const Color.fromRGBO(195, 35, 69, 0.75)
          ),
        ],
        annotations: <GaugeAnnotation>[
          //const RadialChromaticAnnotation().build(context),
          //const RadialChromaticAnnotation().build(context),
          //TODO mudar parametros
          
          GaugeAnnotation(
              angle: 90,
              positionFactor: 0.35,
              widget: Text('D',
                  style:
                  TextStyle(color: Color(0xFFF8B195), fontSize: 16)
              )
          ),
          GaugeAnnotation(
            angle: 90,
            positionFactor: 0.8,
            widget: Text(
              '  33.5  ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          )
        ],
        pointers: <GaugePointer>[
          const RadialChromaticNeedlePointer().build(context)
        ],
        axisLabelStyle: const GaugeTextStyle(fontSize: 10),
        majorTickStyle: const MajorTickStyle(
            length: 0.25, lengthUnit: GaugeSizeUnit.factor
        ),
        minorTickStyle: const MinorTickStyle(
            length: 0.13, lengthUnit: GaugeSizeUnit.factor, thickness: 1
        )
    );
  }
}
