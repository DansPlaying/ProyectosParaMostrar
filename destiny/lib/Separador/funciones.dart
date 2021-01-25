import 'package:flutter/material.dart';

class ContainerEleccion extends StatefulWidget {
  final String titulo;
  final double tamanoFuente;
  final int seleccion;
  final Color color1;
  final Color color2;
  ContainerEleccion(
      this.titulo, this.tamanoFuente, this.seleccion, this.color1, this.color2);
  @override
  _ContainerEleccionState createState() => _ContainerEleccionState();
}

class _ContainerEleccionState extends State<ContainerEleccion> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          gradient: LinearGradient(colors: [widget.color1, widget.color2])),
      child: Center(
        child: Text(
          widget.titulo,
          style: TextStyle(
              fontSize: widget.tamanoFuente, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
