import 'package:flutter/material.dart';
import '../shared/widgets/radial_chromatic/radial_chromatic.dart';

class ChromaticView extends StatelessWidget{
  const ChromaticView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Instrument Tuner"),
            backgroundColor: const Color.fromRGBO(20, 20, 33, 20),
            centerTitle: true,
        ),
        body: const Center(
            child: RadialChromatic()
        ),
        backgroundColor: const Color.fromRGBO(20, 20, 33, 20),
    );
  }
}