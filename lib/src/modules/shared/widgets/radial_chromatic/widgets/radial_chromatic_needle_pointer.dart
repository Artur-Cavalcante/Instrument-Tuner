import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class RadialChromaticNeedlePointer extends StatelessWidget {
  const RadialChromaticNeedlePointer({
    Key? key,
    this.value = _defaultValue,
    this.needleStartWidth = _defaultNeedleStartWidth,
    this.needleEndWidth = 5,
    this.animationType = AnimationType.easeOutBack,
    this.enableAnimation = true,
    this.animationDuration = 1200,
    this.needleLength = 0.6,
    this.knobStyle,
    this.tailStyle,
    this.needleColor
  }) : super(key: key);

  static const double _defaultValue = 0;
  static const double _defaultNeedleStartWidth = 0;

  final double value;
  final double needleStartWidth;
  final double needleEndWidth;
  final AnimationType animationType;
  final bool enableAnimation;
  final double animationDuration;
  final double needleLength;

  final KnobStyle? knobStyle;

  final TailStyle? tailStyle;

  final Color? needleColor;

  @override
  NeedlePointer build(BuildContext context) {
    return NeedlePointer(
        value: value,
        needleStartWidth: needleStartWidth,
        needleEndWidth: needleEndWidth,
        animationType: animationType,
        enableAnimation: enableAnimation,
        animationDuration: animationDuration,
        knobStyle: knobStyle ?? _buildKnobStyle(),
        tailStyle: tailStyle ?? _buildTailStyle(),
        needleColor: needleColor ?? _buildColor(),
        needleLength: needleLength
    );
  }

  KnobStyle _buildKnobStyle() {
    return const KnobStyle(
        knobRadius: 0.09,
        borderColor: Color(0xFFED7615),
        color: Color(0xFFED7615),
        borderWidth: 0.035
    );
  }

  TailStyle _buildTailStyle() {
    return const TailStyle(
          color: Color(0xFFED7615),
          width: 4,
          length: 0.15
      );
  }

  Color _buildColor() => const Color(0xFFED7615);
}
