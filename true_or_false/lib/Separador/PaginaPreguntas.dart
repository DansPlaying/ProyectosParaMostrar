import 'package:flutter/material.dart';
import '../Functions.dart';
import 'Preguntas.dart';

class PaginaPreguntas extends StatefulWidget {
  @override
  _PaginaPreguntasState createState() => _PaginaPreguntasState();
}

class _PaginaPreguntasState extends State<PaginaPreguntas> {
  bool controlCulminacion;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        containerMuestraPreguntas(),
        containersDeSeleccion('TRUE', comprobacion, true, Colors.blueAccent, Colors.blueGrey),
        containersDeSeleccion('FALSE', comprobacion, false, Colors.orangeAccent[700], Colors. orange[300]),
        Container(
          height: 30.0,
          child: Row(
            children: scoreConIconos,
          ),
        ),
      ],
    );
  }

  void comprobacion(bool valorDeSeleccion) {
    setState(() {
      if (allQuiz.isfinished() == true) {
        alerta(context);
        reset();
        scoreConIconos = [];
      } else {
        verificadorDeRespuesta(allQuiz.respuestaCorrecta(), valorDeSeleccion);
        allQuiz.controlPosicion();   
      }
    });
  }
}
