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
  fontSize: 40.0,
  fontFamily: 'MS Gothic',
  color: Color(0xFFFF0000),

);

final TextConfig textoBlanco = TextConfig(
  fontSize: 60.0,
  fontFamily: 'MS Gothic',
  color: Color(0xFFFFFFFF),
); //texto para nivel, score

class MyGame extends BaseGame{

  static int _vidas = 3;
  static int _score = 0;
  static bool   _gameOver       = false;
  static Size   _screenSize;
  static double _spriteSize     = 80.0;

}