import 'package:flutter/material.dart';
import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/routes/routes.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getApplicationRouters() ,
       onGenerateRoute: (settings){
           return MaterialPageRoute(
             builder: (BuildContext context) => AlertPage(),
             );
       },
        ); //MaterialApp
  }
}
