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
  fontSize: 20.0,
  fontFamily: 'MS Gothic',
  color: Color(0xFFFFFFFF),
); //texto para nivel, score
final TextConfig textoAzul = textoBlanco.withColor(Color(0xFF0061FF));
final TextConfig textoVerde = textoBlanco.withColor(Color(0xFF00FF00));
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
  Sprite      _background2 = Sprite('background2.jpeg');
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
    _jugador = new Player(180, 100, 'astronauta.png', _spriteSize); //creacion del jugador
    add(_jugador); //render del jugador
    _audioPlayer = await Flame.audio.loop("background.mp3"); //audio de fondo

    
  }
  @override
  void render(Canvas canvas){
    _background.renderRect(canvas, Rect.fromLTWH(0, 0, _screenSize.width, _screenSize.height-400));
    _background2.renderRect(canvas, Rect.fromLTWH(0, _screenSize.height-350, _screenSize.width, _screenSize.height-370));

    super.render(canvas);

    textoBlanco.render(canvas, "Puntos: ", Position(10, 10)); // datos del juego
    textoAzul.render(canvas, "$_score", Position(90, 10));
    textoBlanco.render(canvas, "Vidas: ", Position(200, 10));
    textoAzul.render(canvas, "$_vidas", Position(280, 10));
    textoVerde.render(canvas, "-ON-", Position(185,340));

    

  }
  
  @override
  void update(double t){
    super.update(t);

  }

  @override
  void onTapDown(TapDownDetails d) {
    if(!_gameOver)                        // solo en caso de que el juego este activo
    { 
    // _jugador.onTapDown(_direccion); //aqui va lo del cambio de direccion pa que se mueva, pero me da error jej
    }
  }
  void cambiaDireccion(int dir){
    _direccion =  dir;
  }

  void resize(Size size){
    super.resize(size);
    _screenSize = size;
  }
  //apartir de aqui variables para la logica del juego

}