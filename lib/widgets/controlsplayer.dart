import 'package:flutter/material.dart';

class ControlsPlayer extends StatelessWidget {
  final bool isPlaying;
  final String descriptionSong;
  final IconData iconStatus;
  final Function next, previous, stop;

  const ControlsPlayer(
      {Key? key,
      required this.next,
      required this.previous,
      required this.isPlaying,
      required this.descriptionSong,
      required this.iconStatus,
      required this.stop})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        IconButton(
          // si isplaying es true pausa si no play
          onPressed: () => isPlaying ? next() : previous(),
          icon: const Icon(Icons.arrow_left),
          iconSize: 20,
        ),

        //Indicar el cambio de estado del text del body
        IconButton(
          onPressed: () => {},
          icon: const Icon(Icons.stop),
          iconSize: 20,
        ),

        //indicarle que si se oresiona esto te aparezaca un texto en el body
        IconButton(
          // si isplaying es true pausa si no play
          //If ternario
          onPressed: () => isPlaying ? next() : previous(),
          icon: const Icon(Icons.arrow_right),
          iconSize: 20,
        ),
      ],
    );
  }
}
