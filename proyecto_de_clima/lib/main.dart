import 'package:flutter/material.dart';
import 'package:aplicacion_youtube_1/ui/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wheaterflut',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
    
      home: HomePage(),
    );
  }
}

