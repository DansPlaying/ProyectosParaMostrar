import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[300],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.redAccent,
                backgroundImage: NetworkImage(
                  'https://2.bp.blogspot.com/_EZ16vWYvHHg/S-BkcsYBUrI/AAAAAAAAMI8/d35vD4Pj8mw/s1600/www.BancodeImagenesGratuitas.com-Fantasticas-8.jpg',
                ),
                radius: 50.0,
              ),
              Text(
                'Daniel Urbina',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Center(
                child: Text(
                  'Dart and Flutter GDE , Data Scientist',
                  style: TextStyle(
                    color: Colors.teal[50],
                    fontWeight: FontWeight.bold,
                    fontFamily: 'SourceSansPro',
                    fontSize: 20.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 200,
                child: Divider(color: Colors.teal[50],),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    '+58 04147015031',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'SourceSansPro',
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.mail_outline,
                    color: Colors.teal,
                  ),
                  title: Text( 
                    'danolo.007xdxd.urbigon@gmail.com',
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'SourceSansPro',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
