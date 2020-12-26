import 'dart:math';                              // random
import 'package:flutter/material.dart';          // uso de Material Design

import 'package:flame/game.dart';                // game engine
import 'package:flame/sprite.dart';              // manejo de sprites
import 'package:audioplayers/audioplayers.dart'; // AUDIO background
import 'package:flame/flame.dart';               // AUDIO sound effects
import 'package:flame/text_config.dart';         // TEXT  
import 'package:flame/position.dart';            // TEXT

import 'package:lost_project_2020/gameobject.dart'; //clase gameobject
import 'package:lost_project_2020/gamepad.dart'; //clase para el gamepad
import 'package:lost_project_2020/player.dart'; //clase player
import 'package:lost_project_2020/zombie.dart'; //clase zombie
import 'package:lost_project_2020/bullet.dart'; //clase bullet

//Instancias para textos
final TextConfig textoRojo = TextConfig(
  fontSize: 50.0,
  fontFamily: 'MS Gothic',
  color: Color(0xFFFF0000),

);

final TextConfig textoBlanco = TextConfig(
  fontSize: 60.0,
  fontFamily: 'MS Gothic',
  color: Color(0xFFFFFFFF),
); //texto para nivel, score
final TextConfig textoAzul = textoBlanco.withColor(Color(0xFF0061FF));
class MyGame extends BaseGame{

 //variables estaticas para funcionamiento de los objetos y logica del juego
  static int _vidas = 3;
  static int _score = 0;
  static int _direccion = 0;
  static bool   _gameOver       = false;
  static Size   _screenSize;
  static double _spriteSize     = 80.0;

//variables para entorno del juego
  AudioPlayer _audioPlayer;
  Sprite      _background = Sprite('background.png');
  Random      _random;

  GameObject _objetos;
  GameObject _jugador;
  List <GameObject> _listaZombies = <GameObject>[];
  List <GameObject> _listaBullets = <GameObject>[];

  double _spawnTimer = 0.0;
  double _fireTimer = 0.0;
  double _hitTimer = 0.0;

  MyGame(){inicializa();}

  void inicializa() async {
    Flame.audio.disableLog();
    AudioPlayer.logEnabled = false;

    _random = Random(DateTime.now().millisecondsSinceEpoch); //
    _jugador = new Player(100, 300, 'astronauta.png', _spriteSize); //creacion del jugador
    add(_jugador); //render del jugador
    _audioPlayer = await Flame.audio.loop("background.mp3"); //audio de fondo
  }
  @override
  void render(Canvas canvas){
    //_background.renderRect(canvas, Rect.fromLTWH(0, 0, _screenSize.width, _screenSize.height));
    super.render(canvas);

    textoBlanco.render(canvas, "Puntaje: ", Position(70, 500));
    textoAzul.render(canvas, "$_score", Position(190, 500));
  }
  
  @override
  void update(double t){
    super.update(t);

  }
  //apartir de aqui variables para la logica del juego

}