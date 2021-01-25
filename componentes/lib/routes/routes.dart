import 'package:componentes/src/pages/listview_page.dart';
import 'package:componentes/src/pages/slider_page.dart';
import 'package:flutter/material.dart';
import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/pages/avatar_page.dart';
import 'package:componentes/src/pages/card_page.dart';
import 'package:componentes/src/pages/home_page.dart';
import 'package:componentes/src/pages/animated_container.dart';
import 'package:componentes/src/pages/Input_page.dart';




Map <String, WidgetBuilder> getApplicationRouters(){

  return<String, WidgetBuilder>{
    '/'       : (BuildContext context) => HomePage(),
    'alert'   : (BuildContext context) => AlertPage(),
    'avatar'  : (BuildContext context) => AvatarPage(),
    'card'    : (BuildContext context) => CardPage(),
    'animatedContainer'    : (BuildContext context) => AnimatedContainerPage(),
    'inputs'    : (BuildContext context) => InputData(),
     "slider"   : (BuildContext context)  => SliderPage(),
     "list"   : (BuildContext context)  => ListViewPage(),
    
  };  


}
String retornoParaCurveNavBar(int posicion){

 List <String> listadeCNB =['alert', 'avatar', 'card', 'animatedContainer', 'inputs', "slider", 'list'];
  return listadeCNB[posicion];

}

