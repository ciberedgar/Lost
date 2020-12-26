import 'package:lost_project_2020/gameobject.dart';

class Player extends GameObject{
  var dirJugador=0; // variable de direccion del jugador 1= arriba, 2= derecha, 3=abajo, 4=izquierda
  var velJugador=5; //variable que determina velocidad del jugador

  //constructor de objeto jugador
  Player(double x, double y, String imagen, double tamImagen)
            :super(x,y,imagen,tamImagen);

  //metodo para movimiento del jugador
  @override
  void update(double t){
    if(dirJugador==1 && this.y <  10 ){ //aqui deberia ir la maxima coordenada en y, no 10 xd, ya que este hecho el disenio sabremos cual es vea?
      this.y += velJugador; //1 = arriba
    }
    else if(dirJugador==2 && this.x <350){
      this.x += velJugador; // 2 = derecha
    }
    else if(dirJugador==3 && this.y > 0 ){ //aqui deberia ir la minima coordenada en y, no 0 xd, ya que este hecho el disenio sabremos cual es vea? x2
      this.y -= velJugador; //3 = abajo
    }
    else if(dirJugador==4 && this.x > 0){
      this.x -= velJugador; // 4 = izquierda
    }

    //metodo llamado por clase game en donde irian los floating action button (cruceta de movimiento)
    //en cada boton iria por ej onPress(direccion = 1,2,3 o 4 seguido de onTapDown(direccion)) 
    //*direccion es una variable estatica en la clase game pensada para la direccion de player y bullet

    void onTapDown(int direccion){
      this.dirJugador=direccion;
    }

  }
  
}