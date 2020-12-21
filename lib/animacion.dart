import 'package:flame/components/animation_component.dart';
import 'package:lost_project_2020/gameobject.dart';

class Animacion extends AnimationComponent{
  static const TIME = 1.0; //tiempo que dura la animacion
//constructor para animacion del bullet, el png tiene 3 frames y queria hacerlo con animacion
//seria cuestion de poner en loop la animacion al renderizar el bullet y destruirlo con el metodo 
//eliminar cuando el objeto choque con un zombie o llegue a extremos de la pantalla
  Animacion(GameObject objeto, double tamImagen)
          : super.sequenced(tamImagen, tamImagen, 'bullet', 3, textureWidth: 40.0, 
          textureHeight:40.0){

            this.x = objeto.x;
            this.y = objeto.y;
            this.animation.stepTime = TIME/3;
          }

  bool destroy(){
    ////eliminar cuando el objeto choque con un zombie o llegue a extremos de la pantalla
  }
  }
