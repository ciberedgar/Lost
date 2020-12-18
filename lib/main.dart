import 'package:flutter/material.dart';  // uso de Material Design
import 'package:flutter/services.dart';  // servicios: DeviceOrientation
import 'package:flame/util.dart';        // Flame: fullscreen, setOrientation

import 'package:lost_project_2020/game.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();  // enlaza capa Widgets y motor Flutter 

  Util flameUtil = Util();                    // instanciamos objeto flameUtil de Util
  await flameUtil.fullScreen();          // adecuamos la pantalla
  await flameUtil.setOrientation(DeviceOrientation.portraitUp);

  MyGame game = MyGame();     // instanciamos objeto game de clase MyGame    
  runApp(MaterialApp(         // widget que envuelve un conjunto de otroswidgets
      home: game.widget, 
        ),
      );
}