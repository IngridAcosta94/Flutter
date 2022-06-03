import 'dart:developer';

import 'package:flutter/material.dart';

class StatusSong extends StatelessWidget {
  final bool isPlaying;
  final String descriptionSong;
  final IconData iconStatus;
  final Function play, pause;

  const StatusSong({//Esto lo reutilizo en el home.dart y le asigno las funciones que cree
    Key? key,
    required this.isPlaying,
    required this.descriptionSong,
    required this.iconStatus,
    required this.play,
    required this.pause,
   // required this.next,
    //required this.previous
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            // si isplaying es true pausa si no play
              onPressed: () => isPlaying ? pause() : play(),//AQUI INDICAMOS LA ACCION QUE ESPERAMOS QUE SUCEDA AL PRECIONAR EL BOTON
              icon: Icon(iconStatus),
              iconSize: 200),
          Text(
            descriptionSong,    
            style: const TextStyle(fontSize: 40, color: Colors.redAccent),
          )
        ],
      ),
    );
  }
}
