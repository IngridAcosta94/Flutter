import 'package:flutter/material.dart';
import 'package:myfirstapp/widgets/controlsplayer.dart';
import 'package:myfirstapp/widgets/status_song.dart';

//ESTE ES EL QUE SE DECLARA EN EL MAIN PARA ARRANCAR

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isPlaying = false;
  String description = 'Press to play...';
  IconData icon = Icons.play_arrow;

//FUNCIONES
  void play() {
    isPlaying = true;
    description = 'Press to pause...';
    icon = Icons.pause;
    setState(() {});
  }

  void pause() {
    isPlaying = false;
    description = 'Press to restart...';
    icon = Icons.play_arrow;
    setState(() {});
  }

  void next() {
    isPlaying = true;
    description = 'Previous song...';
    icon = Icons.play_arrow;
    setState(() {});
  }

  void previous() {
    isPlaying = false;
    description = 'Next song...';
    icon = Icons.play_arrow;
    setState(() {});
  }

  void stop() {
    isPlaying = true;
    description = 'Stop Song...';
    icon = Icons.play_arrow;
    setState(() {});
  }

//Todo el cuerpo
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: StatusSong(
        descriptionSong: description,
        iconStatus: icon,
        isPlaying: isPlaying,
        //LAS FUNCIONES SE IGUALAN A LAS VARIABLES DEClARADAS Y QUE ESPERA LA CLASE
        play: play,
        pause: pause,
      ),

// eN ESTE CASO TENGO QUE HACER LO MISMO QUE EN EL ANTERIOR
      bottomNavigationBar: ControlsPlayer(
        descriptionSong: description,
        iconStatus: icon,
        isPlaying: isPlaying,//como sabe que este cambio de estado se refleha e el text del body?
        next: next,
        previous: previous,
        stop: stop,
      ),
    );
  }
}
