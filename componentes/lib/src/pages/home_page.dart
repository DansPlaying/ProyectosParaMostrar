import 'package:componentes/routes/routes.dart';
import 'package:flutter/material.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:componentes/src/utils/icono_string_util.dart';
import 'package:componentes/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  GlobalKey _botonDeNavegacionKey = GlobalKey();
  String _posicionDeCurveNavBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _botonDeNavegacionKey,
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.blueAccent,
        color: Colors.blueAccent,
        items: [
          Icon(Icons.add_alert, size: 30,     color: Colors.white,),
          Icon(Icons.accessibility, size: 30, color: Colors.white,),
          Icon(Icons.folder_open, size: 30,   color: Colors.white,),
          Icon(Icons.donut_large, size: 30,   color: Colors.white,),
          Icon(Icons.input, size: 30,         color: Colors.white,),
          Icon(Icons.tune, size: 30,          color: Colors.white,),
          Icon(Icons.list, size: 30,          color: Colors.white,),
        ],
        onTap: (index){
          Navigator.pushNamed(context, retornoParaCurveNavBar(index));
        },
          letIndexChange: (index) => true,
      ),
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        leading: Icon(Icons.android),
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    //menuProvider.cargarData()
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );

    // return ListView(
    // children: _listaItems(),
    //);
  }

  List<Widget> _listaItems(List<dynamic> data, context) {
    final List<Widget> opciones = [];

    data.forEach((options) {
      final widgetTemp = ListTile(
        title: Text(options['texto']),
        leading: getIcon(options["icon"]),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blueAccent),
        onTap: () {
          Navigator.pushNamed(context, options['ruta']);

          //una forma para navegar a una sola pagina
          // final route = MaterialPageRoute(
          //   builder: (context) =>  AlertPage(),
          //   );
          // Navigator.push(context, route);
        },
      );

      opciones..add(widgetTemp)..add(Divider());
    });

    return opciones;
  }
}
