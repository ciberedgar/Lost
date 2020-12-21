import 'package:flame/components/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lost_project_2020/game.dart';

const SPEED = 120; //DETERMINA LA VELOCIDAD DE LOS OBJETOS

abstract class GameObject extends SpriteComponent{
  double _x, _y; //variables de posicion del objeto
  String _imagen; //variale para insertar la imagen del objeto
  double _tamanioImagen; //variable para el tamanio de la imagen
  bool _eliminar = false; // variable para eliminar un objeto

  GameObject(this._x,this._y,this._imagen,this._tamanioImagen)
            :super.square(_tamanioImagen, _imagen);

  // metodo set para actualizar el atributo eliminar y borrar un objeto
  set remove(bool eliminar){
    _eliminar = eliminar;
  }
  // metodo render para el objeto
  @override
  void render(Canvas  canvas){
    super.render(canvas);
  }

  //metodo update para actualizar variables de movimiento de los zombies, o para general, depende en que quedemos del movimiento, igual esta override
  @override
  void update(double tiempo){
    //incremento de posicion ya sea x o y ej. this.x += t*SPEED(velocidad del los objetos)
  }

  //metodo para determinar si se elimina un objeto
  @override
  bool destroy(){
    if(this._eliminar)
      return true;
    else 
      return false;
  }

  //metodo para cuando se actualiza el tamanio de la pantalla o se agrea un objeto al escenario
  //metodo add
  @override
  void resize(Size tam){
      this.x = _x;
      this.y = _y;
  }

}
