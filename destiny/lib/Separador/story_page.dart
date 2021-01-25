import 'package:destiny/Separador/funciones.dart';
import 'package:flutter/material.dart';
import 'claseStrotyBrain.dart';

HistoriasDestino historias = HistoriasDestino();

class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    historias.retornoDeTitulo(),
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      historias.nuevoTexto(1);
                    });
                  },
                  child: ContainerEleccion(
                      historias.retornoDeChoice1(), 20.0, 1, Colors.orangeAccent[700], Colors. orange[300] ),
                ),
              ),
              SizedBox(height: 20.0),
              Expanded(
                flex: 3,
                child: Visibility(
                  visible: historias.visibilidad(),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        historias.nuevoTexto(2);
                      });
                    },
                    child: ContainerEleccion(historias.retornoDeChoice2(), 20.0,
                        2, Colors.blueAccent, Colors.blueGrey),
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
