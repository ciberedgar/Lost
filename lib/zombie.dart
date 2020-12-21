import 'package:lost_project_2020/gameobject.dart';

class Zombie extends GameObject{

  Zombie(double x, double y, String imagen, double tamImagen)
        :super(x,y,imagen,tamImagen);


  void update(double t){
    //aqui el movimiento predeterminado de los zombies, falta que veamos que onda con eso
  }
}