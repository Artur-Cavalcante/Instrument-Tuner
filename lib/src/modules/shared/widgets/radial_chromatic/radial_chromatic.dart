import 'package:flutter/material.dart';

import 'widgets/base_radial_chromatic.dart';

class RadialChromatic extends StatefulWidget {
  const RadialChromatic({super.key});

  @override
  RadialChromaticState createState() =>
      RadialChromaticState();
}

class RadialChromaticState extends State<RadialChromatic> {
  RadialChromaticState();
//TODO colocar parametros nos componentes e remover numeros fixados
  @override
  Widget build(BuildContext context) {
    // setState(() {
    // });//TODO TO START
    return const BaseRadialChromatic();
  }
}