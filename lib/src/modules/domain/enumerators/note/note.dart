enum Note {
  C(label: "C"),
  CSharp(label: "C#"),
  D(label: "D"),
  DSharp(label: "D#"),
  E(label: "E"),
  F(label: "F"),
  FSharp(label: "F#"),
  G(label: "G"),
  GSharp(label: "G#"),
  A(label: "A"),
  ASharp(label: "A#"),
  B(label: "B");

  const Note({required this.label});

  final String label;
}
