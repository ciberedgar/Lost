import 'package:lost_project_2020/gameobject.dart';

class Bullet extends GameObject{
  int dirBullet = 0; //las mismas de player 1=arriba y asi
  int velBullet = 8;

  Bullet(double x, double y, String imagen, double tamImagen)
          :super(x,y,imagen, tamImagen);

  //metodo para actualizacion del movimiento que debera ser en funcion de el valor de dirBullet
  // 
  void update(double t){
    if(dirBullet == 1){
        this.y += velBullet;
    }
    else if(dirBullet == 2){
        this.x += velBullet;
    }
    else if(dirBullet == 3){
        this.y -= velBullet;
    }
    else if(dirBullet == 4){
        this.x -= velBullet;
    }
  }
//funcionara de la misma manera que en la clase player
  void onTapDown(int direccion){
    this.dirBullet=direccion;
  }

}