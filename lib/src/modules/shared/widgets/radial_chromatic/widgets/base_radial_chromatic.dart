import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class BaseRadialChromatic extends StatelessWidget {
  BaseRadialChromatic({
    super.key,
    this.radialGaugeAnimationDuration = 0,
    this.radialGaugeEnableLoadingAnimation = true,
    this.radialAxisMinimum = -50,
    this.radialAxisMaximum = 150,
    this.radialAxisInterval = 20,
    this.radialAxisMinorTicksPerInterval = 1,
    this.radialAxisTickOffset = 2,
    this.radialAxisShowAxisLine = false,
    this.radialAxisRadiusFactor = 0.9,
    this.radialAxisShowLabels = false,
    this.radialValue = 0,
    this.annotationToGauge = "-",
    this.startValueFirstGauge = -50,
    this.endValueFirstGauge = 10,
    this.startValueSecondGauge = 10,
    this.endValueSecondGauge = 40,
    this.startValueThirdGauge = 40,
    this.endValueThirdGauge = 60,
    this.startValueFourthGauge = 60,
    this.endValueFourthGauge = 90,
    this.startValueFifthGauge = 90,
    this.endValueFifthGauge = 150,
  });

  final double radialGaugeAnimationDuration;
  final bool radialGaugeEnableLoadingAnimation;

  final double radialAxisMinimum;
  final double radialAxisMaximum;
  final double radialAxisInterval;
  final double radialAxisMinorTicksPerInterval;
  final double radialAxisTickOffset;
  final bool radialAxisShowAxisLine;
  final double radialAxisRadiusFactor;
  final bool radialAxisShowLabels;

  double radialValue;
  String annotationToGauge;

  double startValueFirstGauge;
  double endValueFirstGauge;

  double startValueSecondGauge;
  double endValueSecondGauge;

  double startValueThirdGauge;
  double endValueThirdGauge;

  double startValueFourthGauge;
  double endValueFourthGauge;

  double startValueFifthGauge;
  double endValueFifthGauge;

  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
      animationDuration: radialGaugeAnimationDuration,
      enableLoadingAnimation: radialGaugeEnableLoadingAnimation,
      axes: <RadialAxis>[
        RadialAxis(
            minimum: radialAxisMinimum,
            maximum: radialAxisMaximum,
            interval: radialAxisInterval,
            minorTicksPerInterval: radialAxisMinorTicksPerInterval,
            tickOffset: radialAxisTickOffset,
            showAxisLine: radialAxisShowAxisLine,
            radiusFactor: radialAxisRadiusFactor,
            showLabels: radialAxisShowLabels,
            ranges: <GaugeRange>[
              GaugeRange(
                  startValue: startValueFirstGauge,
                  endValue: endValueFirstGauge,
                  startWidth: 0.300,
                  sizeUnit: GaugeSizeUnit.factor,
                  endWidth: 0.300,
                  color: const Color.fromRGBO(195, 35, 69, 0.75)
              ),
              GaugeRange(
                  startValue: startValueSecondGauge,
                  endValue: endValueSecondGauge,
                  startWidth: 0.300,
                  sizeUnit: GaugeSizeUnit.factor,
                  endWidth: 0.300,
                  color: const Color.fromRGBO(237, 118, 21, 0.75)
              ),
              GaugeRange(
                  startValue: startValueThirdGauge,
                  endValue: endValueThirdGauge,
                  startWidth: 0.300,
                  sizeUnit: GaugeSizeUnit.factor,
                  endWidth: 0.300,
                  color: const Color.fromRGBO(38, 194, 39, 0.75)
              ),
              GaugeRange(
                  startValue: startValueFourthGauge,
                  endValue: endValueFourthGauge,
                  startWidth: 0.300,
                  sizeUnit: GaugeSizeUnit.factor,
                  endWidth: 0.300,
                  color: const Color.fromRGBO(237, 118, 21, 0.75)
              ),
              GaugeRange(
                  startValue: startValueFifthGauge,
                  endValue: endValueFifthGauge,
                  startWidth: 0.300,
                  sizeUnit: GaugeSizeUnit.factor,
                  endWidth: 0.300,
                  color: const Color.fromRGBO(195, 35, 69, 0.75)
              ),
            ],
            annotations: <GaugeAnnotation>[
              GaugeAnnotation(
                  angle: 90,
                  positionFactor: 0.35,
                  widget:
                      Text(
                          annotationToGauge,
                          style: const TextStyle(
                              color: Color(0xFFF8B195),
                              fontSize: 16
                          )
                  )
              ),
              GaugeAnnotation(
                angle: 90,
                positionFactor: 0.8,
                widget: Text(
                  "${radialValue.toInt().toString()} Hz",
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              )
            ],
            axisLabelStyle: const GaugeTextStyle(fontSize: 10),
            majorTickStyle: const MajorTickStyle(
                length: 0.25,
                lengthUnit: GaugeSizeUnit.factor
            ),
            minorTickStyle: const MinorTickStyle(
                length: 0.13,
                lengthUnit: GaugeSizeUnit.factor,
                thickness: 1
            ),
            pointers: <GaugePointer>[
              NeedlePointer(
                  value: radialValue,
                  needleStartWidth: 0,
                  needleEndWidth: 5,
                  animationType: AnimationType.easeOutBack,
                  enableAnimation: true,
                  animationDuration: 1200,
                  knobStyle: const KnobStyle(
                      knobRadius: 0.09,
                      borderColor: Color(0xFFED7615),
                      color: Color(0xFFED7615),
                      borderWidth: 0.035
                  ),
                  tailStyle: const TailStyle(
                      color: Color(0xFFED7615),
                      width: 4,
                      length: 0.15
                  ),
                  needleColor: const Color(0xFFED7615),
                  needleLength: 0.6
              )
            ],
        )
      ],
    );
  }
}
