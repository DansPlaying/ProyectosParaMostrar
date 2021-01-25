import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'Separador/Preguntas.dart';

GenerealQuiz allQuiz = GenerealQuiz();

List<Icon> scoreConIconos = [];

Icon iconoSegunRespuesta(bool valor, Color color) {
  return Icon(
    valor ? Icons.check : Icons.close,
    color: color,
  );
}

void verificadorDeRespuesta(bool correcto, bool seleccionado) {
  if (correcto == seleccionado)
    scoreConIconos.add(iconoSegunRespuesta(true, Colors.green));
  else
    scoreConIconos.add(iconoSegunRespuesta(false, Colors.red));
}

alerta(BuildContext context) {
  return Alert(
    context: context,
    title: 'Finished!',
    desc: 'You\'ve reached the end of the quiz.',
  ).show();
}

Widget containersDeSeleccion(
    String texto, comprobacion, bool comprobador, Color color1, Color color2) {
  return Expanded(
    child: Padding(
      padding: EdgeInsets.all(15.0),
      child: InkWell(
        child: Container(
          padding: EdgeInsets.only(left:115.0, top: 10.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [color1, color2]),
            color: color1,
            borderRadius: BorderRadius.all(
              Radius.circular(30.0),
            ),
          ),
          child: Text(
            texto,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
            ),
          ),
        ),
        onTap: () => comprobacion(comprobador),
      ),
    ),
  );
}

Widget containerMuestraPreguntas() {
  return Expanded(
    flex: 5,
    child: Padding(
      padding: EdgeInsets.all(10.0),
      child: Center(
        child: Text(
          allQuiz.retornoDeTexto(),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25.0,
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}
