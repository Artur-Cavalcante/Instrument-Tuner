# instrument-tuner
A simple and full instrument tuner

## Briefing

Was maded based on (post)[https://techpotatoes.com/2021/07/27/implementing-a-guitar-tuner-app-in-dart-flutter/]

This project use that packages:

- flutter_audio_capture
    - Used for capture audio from device. Return audio buffer to represent what was listened
- pitch_detector_dart
    - After get audio buffer, pith_detector_dart package has a method called getPitch 
    that return the result pitch in hertz, after calculate audio buffer with YIN algorithm
    - Note: The algorithm in pitch_detector_dart was written based on java package by JorenSix. 
            JorenSix transcripted the YIN algorithm using the paper explain all about it.
- pitchupdart
    - Getting result pitch in hertz, this package translate it in range parsing to something note (C, E, D, ...)

## Links
Package java by Joren Six: 
    - (Repo YIN algorithm)[https://github.com/JorenSix/TarsosDSP/blob/d9583528b9573a97c220d19e6d9ab2929e9bd1c5/src/core/be/tarsos/dsp/pitch/Yin.java]
YIN paper
    - Into folder called other inside this repository









