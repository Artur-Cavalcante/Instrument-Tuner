import 'package:flutter/material.dart';
import 'package:instrument_tuner/src/chromatic/chromatic_view_state.dart';

class ChromaticView extends StatefulWidget{
  const ChromaticView({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return const ChromaticStatistics(); 
  // }
  
  @override
  State<StatefulWidget> createState() {
    return ChromaticViewState();
  }
}