import 'package:flutter/material.dart';  // uso de Material Design
import 'package:flutter/services.dart';  // servicios: DeviceOrientation
import 'package:flame/util.dart';        // Flame: fullscreen, setOrientation

import 'package:lost_project_2020/game.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();  
  int direccion = 0;
  Util flameUtil = Util();                    
  await flameUtil.fullScreen();          
  await flameUtil.setOrientation(DeviceOrientation.portraitUp);

  MyGame game = MyGame();        
  runApp(MaterialApp(         
      home: Scaffold(appBar: null,
      body: game.widget, //gamepad
      floatingActionButton: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      Spacer(),
      Row(
        children: <Widget>[
          Spacer(),
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(width:50),
                    GestureDetector(
                      child: Container(
                        height: 48,
                        width: 48,
                        color: Color(0xFF6A1B9A),
                        child: Center(
                          child: Icon(Icons.keyboard_arrow_up, size: 32),
                        ),
                      ),
                      onPanDown: (DragDownDetails d) {direccion=1; game.cambiaDireccion(direccion);},//asi es como se cambia la variable direccion del jugador y con el cual
                      //se indica hacia donde se mueve el jugador
                     onPanEnd: (DragEndDetails d) {direccion=0;}, //al soltarse la interraccion se devuelve el valor a 0 siendo el no moverse
                    ),
                    SizedBox(width:50),
                  ],
                ),
                Row(
                  children:<Widget>[
                    GestureDetector(
                      child: Container(
                        height: 48,
                        width: 48,
                        color: Color(0xFF6A1B9A),
                        child: Center(
                          child: Icon(Icons.keyboard_arrow_left, size: 32),
                        ),
                      ),
                      onPanDown: (DragDownDetails d) {},
                     onPanEnd: (DragEndDetails d) {},
                    ),
                    SizedBox(width: 50),
                    GestureDetector(
                      child: Container(
                        height: 48,
                        width: 48,
                        color: Color(0xFF6A1B9A),
                        child: Center(
                          child: Icon(Icons.keyboard_arrow_right, size: 32),
                        ),
                      ),
                      onPanDown: (DragDownDetails d) {},
                     onPanEnd: (DragEndDetails d) {},
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    SizedBox(width:50),
                    GestureDetector(
                      child: Container(
                        height: 48,
                        width: 48,
                        color: Color(0xFF6A1B9A),
                        child: Center(
                          child: Icon(Icons.keyboard_arrow_down, size: 32),
                        ),
                      ),
                      onPanDown: (DragDownDetails d) {
                        
                      },
                     onPanEnd: (DragEndDetails d) {},
                    ),
                    SizedBox(width:50),
                  ],),
                  SizedBox(height: 100,),
              ],
            ),
          ), //botones de direccion
          SizedBox(width: 85),
          Center(
            child: GestureDetector(
              child: Container(
                height: 84,
                width: 84,
                child: Center(
                  child: Icon(Icons.new_releases, size: 84),
                  
                ),
              ),
              onTap: (){
                
              },
            ),
            ), //boton de disparo
          Spacer(),
        ],
      )
      
    ],
  ),
      ),
      ),
      );
}