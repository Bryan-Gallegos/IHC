import 'package:flutter/material.dart';
import 'home_page.dart';
import 'urgencia.dart';
import 'fundamental.dart';
import 'dia.dart';
import 'acontecimiento.dart';
import 'cabala.dart';


void main() {
  runApp(Login());
}
class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Estudio Numerologico",
      routes:{
        "/": (BuildContext context) => MyHomePage(),
        "/urgencia": (BuildContext context) => UrgenciaPage(),
        "/fundamental": (BuildContext context) => FundamentalPage(),
        "/dia": (BuildContext context) => DiaPage(),
        "/acontecimiento": (BuildContext context) => AcontecimientoPage(),
        "/cabala": (BuildContext context) => CabalaPage(),
      },
    );
  }
}