import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _MenuProvider {

  List<dynamic> opciones=[];

  Future <List<dynamic>> cargarData() async{

    final resp = await rootBundle.loadString('Data/menu_opts.json');
      

    Map dataMap = json.decode(resp);
    // print(dataMap['rutas']);
    opciones= dataMap['rutas'];

    return opciones;
  }

  }


final menuProvider = new _MenuProvider();