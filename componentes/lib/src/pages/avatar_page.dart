import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: [

          CircleAvatar(
            backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/7/7b/Stan_Lee_by_Gage_Skidmore_3.jpg'),
            radius: 30.0,
          ),

          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          ),
        ],
      ),
      body: Center(
        child: Container(
          height: 200.0,
          child: FadeInImage(fadeInDuration: Duration(milliseconds: 200),placeholder: AssetImage('Data/assets/1.gif'), image: NetworkImage('https://www.nme.com/wp-content/uploads/2018/04/Stan-Lee-696x442.jpg'))),
      ),
    );
  }
}