import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cards"),
      ),
      body: Column(
        children: [
          _cardTipo1(),
          Container(
            height: 300.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(10.0), children: <Widget>[
              _cardTipo2(),
              SizedBox(height: 30.0),
              _cardTipo2(),
              SizedBox(height: 30.0),
              _cardTipo2(),
              SizedBox(height: 30.0),
              _cardTipo2(),
              SizedBox(height: 30.0),
              _cardTipo2(),
              SizedBox(height: 30.0),
              _cardTipo2(),
              SizedBox(height: 30.0),
              _cardTipo2(),
              SizedBox(height: 30.0),
              _cardTipo2(),
              SizedBox(height: 30.0),
              _cardTipo2(),
            ]),
          ),
        ],
      ),
    );
  }
}

Widget _cardTipo1() {
  return Card(
    elevation: 10.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    child: Column(
      children: [
        ListTile(
          leading: Icon(
            Icons.photo_album,
            color: Colors.blue,
          ),
          title: Text('Soy el Titulo de esta tarjeta'),
          subtitle: Text(
              'Aqui estamos con la descripcion de la tarjeta que quiero que ustedes vean'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FlatButton(onPressed: () {}, child: Text('Cancelar')),
            FlatButton(onPressed: () {}, child: Text('Ok')),
          ],
        ),
        SizedBox(
          height: 30.0,
        ),
      ],
    ),
  );
}

Widget _cardTipo2() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.white,
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.black26,
          blurRadius: 10.0,
          spreadRadius: 2.0,
          offset: Offset(2.0,10.0)
        ),
      ],
    ),
    child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
          child: Container(
        child: Column(
          children: [
            FadeInImage(
              placeholder: AssetImage('Data/assets/1.gif'),
              image: NetworkImage(
                  'https://th.bing.com/th/id/OIP.agK_dsHsNl8CFRRJL7tDwwHaEK?pid=Api&rs=1'),
              fadeInDuration: Duration(milliseconds: 200),
              height: 200.0,
              fit: BoxFit.cover,
            ),
            Container(
              child: Text('Hola'),
              padding: EdgeInsets.all(10.0),
            ),
          ],
        ),
      ),
    ),
  );
}
