import 'package:flutter/material.dart';
import 'package:aplicacion_youtube_1/common/loaderWidget.dart';
import 'package:aplicacion_youtube_1/common/headerCommon.dart';
import 'add_city_bloc.dart';

class AddCitiesPage extends StatefulWidget {

  @override
  _AddCitiesPageState createState() => _AddCitiesPageState();
}

class _AddCitiesPageState extends State<AddCitiesPage> {

  final bloc= AddCityBloc();

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: bloc, 
      builder: (context, child){
        return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ), 
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HeaderWidget(
              title: 'Agregar Ciudad'
              ),
              const SizedBox(height: 15.0,),
             ClipRRect(
               borderRadius: BorderRadius.circular(15.0),
               child: TextField(
                 onChanged: bloc.onChangedText,
                  decoration: InputDecoration(
                   focusedBorder: InputBorder.none,
                   border: InputBorder.none,
                   filled: true,
                   hintText: 'Buscar Ciudad',
                   fillColor: Colors.grey[200],
                   prefixIcon: Icon(Icons.search),
                  ),
               ),
             ),
             const SizedBox(
               height: 25.0,
             ),
             Expanded(
                child: ListView.builder(
                 itemCount: bloc.cities.length,
                 itemBuilder: (context, index){
                   final city= bloc.cities[index];
                   return ListTile(
                   title: Text(
                     city.title,
                     style: TextStyle(
                       fontWeight: FontWeight.w700),
                   ), 
                   trailing: IconButton(
                      icon: Icon(Icons.add, color: Colors.blueAccent,),
                      onPressed: (){
                        bloc.addCity(city);
                      },
                   ),
                 );
               }),
             ),
             if (bloc.loading==true)
             Center(child: LoaderWidget()),
          ],),
      ),
    );
  },
      );
  }
}