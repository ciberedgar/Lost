import 'package:flame/components/component.dart';
import 'package:flutter/material.dart';
import 'package:lost_project_2020/game.dart';

const SPEED = 120; //DETERMINA LA VELOCIDAD DE LOS OBJETOS

abstract class GameObject extends SpriteComponent{
  double _x,_y;
}
