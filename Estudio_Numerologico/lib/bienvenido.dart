import 'package:flutter/material.dart';
class Bienvenido extends StatefulWidget {
  String nom;
  String fec;
  int ui;
  int tf;
  int tdia;
  String m;
  String a;
  Bienvenido(this.nom,this.fec,this.ui,this.tf,this.tdia);
  @override
  _BienvenidoState createState() => _BienvenidoState();
}

class _BienvenidoState extends State<Bienvenido> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Estudio Numerologico"),
        ),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Bienvenido '+widget.nom+'\n'+
                'Fecha de nacimiento: '+widget.fec,
                style: TextStyle(
                  fontSize:20,
                  fontFamily:'rbold'
                  ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Urgencia Interior: \n'
                +'Arcano '+widget.ui.toString(),
                style: TextStyle(
                  fontSize:20,
                  fontFamily:'rbold'
                  ),
              ),
            ),
            Container(
              width: 225,
              height: 225,
              child: Image.asset('assets/images/arcano_'+widget.ui.toString()+'.PNG')
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Tonica Fundamental : \n'
                +'Arcano '+widget.tf.toString(),
                style: TextStyle(
                  fontSize:20,
                  fontFamily:'rbold'
                  ),
              ),
            ),
            Container(
                width: 225,
                height: 225,
                child: Image.asset('assets/images/arcano_'+widget.tf.toString()+'.PNG')
            ),
             Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Tonica del Dia : \n'
                +widget.tdia.toString(),
                style: TextStyle(
                  fontSize:20,
                  fontFamily:'rbold'
                  ),
              ),
            ),
          ],
        ),
    );
  }
}