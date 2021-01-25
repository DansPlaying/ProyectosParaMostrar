import 'package:flutter/material.dart';
import 'package:aplicacion_youtube_1/cities/cities_page.dart';

class HomePage extends StatelessWidget {


  void myCities(BuildContext context){
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_)=> CitiesPage(),
      ),
      );
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'images/welcome.jpg',
            ),
         SafeArea(
           child: Center(
             child: Container(
               child: ConstrainedBox(
               constraints: BoxConstraints(
                 maxWidth: 250.0,
                 ),
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                const SizedBox(
                  height: 30.0,
                ),  
                Image.asset(
                  'images/icon.png',
                  height: 70.0,
                  width: 300.0,
                  ),

                  const SizedBox(
                  height: 80.0,
                ),  

                  Text(
                    "Hola,\n Bienvenido",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      )

                  ),

                  const SizedBox(
                  height: 20.0,
                ),  


                  Text(
                  "¿Que te parece si agregmos\n una nueva ciudad?",
                  textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                  height: 50.0,
                ), 
                RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Text('Agregar Ciudad'),
                  onPressed: () => myCities(context),
                ) 

                ],
               ),
         ),
             ),
           ),
        )   
        ],
      )
    );
  }
} 