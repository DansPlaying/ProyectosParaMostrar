
import 'dart:convert';

import 'package:aplicacion_youtube_1/data/data_constant.dart';
import 'package:aplicacion_youtube_1/model/weather.dart';
import 'package:flutter/material.dart';
import 'package:aplicacion_youtube_1/model/city.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import 'debouncer.dart';


class AddCityBloc extends ChangeNotifier {

  final debouncer = Debouncer();
  bool loading= false;

  List<City> cities= [];

  void onChangedText(String text){
    debouncer.run((){
      if (text.isNotEmpty) requestSearch(text);
    }
    );
  }  
   void requestSearch(String text) async {
      loading=true;
      notifyListeners();
    await Future.delayed(const Duration(seconds: 3) );
    final url = '${api}search/?query=$text';
    final response = await http.get(url);
    final data= jsonDecode(response.body) as List;

      loading=false;
      cities = data.map((e) => City.fromJson(e)).toList();
      notifyListeners();
  }

  void addCity(City city) async{
    final url = '$api${city.id}';
    final response = await http.get(url);
    final data= jsonDecode(response.body);
    final weatherData = data['consolidated_weather'] as List;
    final weathers= weatherData.map((e) => Weather.fromJson(e)).toList();
    final newCity = city.fromWeathers(weathers);
    print(newCity.toJson());
  }

}