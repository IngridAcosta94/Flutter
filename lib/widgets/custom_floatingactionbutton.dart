import 'package:flutter/material.dart';
//ESTATUS SONG DART
class CustomFloatingActionButton extends StatelessWidget {
  final Function stopMusic;//DECLARO MIS FUNCIONES COMO SI FUERAN CLASES PAREA USAR
  final Function previusSong;
  final Function nextSong;

  const CustomFloatingActionButton({
    Key? key,
    required this.stopMusic,
    required this.previusSong,
    required this.nextSong,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.arrow_left),
          onPressed: () => previusSong(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.stop),
          onPressed: () => stopMusic(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.arrow_right),
          onPressed: () => nextSong(),
        ),
      ],
    );
  }
}