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
    if(dirJugador==1 && this.y <  10 ){ //aqui deberia ir la maxima coordenada en y
      this.y += velJugador; //1 = arriba
    }
    else if(dirJugador==2 && this.x <350){
      this.x += velJugador; // 2 = derecha
    }
    else if(dirJugador==3 && this.y > 0 ){ //aqui deberia ir la minima coordenada en y
      this.y -= velJugador; //3 = abajo
    }
    else if(dirJugador==4 && this.x > 0){
      this.x -= velJugador; // 4 = izquierda
    }

    
     
    
    @override
    void onTapDown(int direccion){
      this.dirJugador=direccion;
    }

  }
  
}