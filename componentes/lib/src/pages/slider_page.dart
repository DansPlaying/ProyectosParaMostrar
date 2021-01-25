import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 100.0;
  bool _bloquearCheck= false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top:50.0),
        child: Column(children: [
          Divider(),
          _crearSlider(),
          _crearCheckbox(),
          _crearHeadSwitch(),
          Expanded(child: _crearImagen()),
          Divider(height: 50.0,),
        ],
        )
        )
    );
  }

  Widget _crearSlider() {

    return Slider(
      activeColor: Colors.indigo[300],
      label: 'Tamaño de la imagen',
      // divisions: 20,
      onChanged: 
      ( _bloquearCheck) ? null : ( valor ){
        setState(() {
        _valorSlider = valor;
        });
      },
      value: _valorSlider,
      min: 10.0,
      max: 360.0,
    );
  }

  Widget _crearImagen() {

    return Image(
      image:  AssetImage('Data/assets/1.gif'),
        width: _valorSlider,
        fit: BoxFit.contain,
      );
  }
  Widget _crearCheckbox() {

    // return Checkbox(value: _bloquearCheck,
    //  onChanged: (valor){
    //    setState(() {
    //    _bloquearCheck=valor;
    //    });
    //  }
    //  );

    return Container(
      child: CheckboxListTile(
        value: _bloquearCheck, 
        onChanged: (valor){
        setState(() {
         _bloquearCheck=valor;
         });
         },
        title: Text('Bloquear Slider'),     
      ),
    );
}

  Widget _crearHeadSwitch() {

    return SwitchListTile(
      value: _bloquearCheck, 
      onChanged: (valor){
      setState(() {
       _bloquearCheck=valor;
       });
       },
      title: Text('Bloquear Slider'),     
    );

  }



}

