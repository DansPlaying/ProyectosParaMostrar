import 'package:aplicacion_youtube_1/add/addCities.dart';
import 'package:flutter/material.dart';
import 'package:aplicacion_youtube_1/common/headerCommon.dart';

class CitiesPage extends StatelessWidget {

  void _addCities(BuildContext context){
    Navigator.of(context).push(
      PageRouteBuilder(
        transitionDuration: const Duration(milliseconds: 200),
        pageBuilder: (_, animation1, animation2)
      {
          // return FadeTransition(
          //   opacity: animation1,
          //   child: AddCitiesPage()
          //   );
          return SlideTransition(
          position: Tween<Offset>(
            begin: Offset(0.0, 1.0),
            end: Offset(0.0, 0.0),
            ).animate(animation1),
          child: AddCitiesPage(),
          );
      }
      ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      floatingActionButton: SafeArea(
              child: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.blue,
          onPressed: ()=>_addCities(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HeaderWidget(
              title: 'Mis Ciudades'
              ),
            Expanded(
               child: Center(
               child: Text(
                'No tiene Ciudades',
                  style: TextStyle(fontSize: 20.0),
                        ),
              ),
            ), 
          ],),
      ),
    );
  }
 } 