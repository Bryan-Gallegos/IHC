import 'package:flutter/material.dart';
import 'urgencia.dart';
import 'fundamental.dart';
import 'dia.dart';
import 'acontecimiento.dart';
import 'cabala.dart';

String nameValue;
String dateValue;

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    SecondPageArguments args = ModalRoute.of(context).settings.arguments;
    nameValue=args.name;
    dateValue=args.date;
    return ListView(
      children: <Widget>[
        Container(
          child: RaisedButton(onPressed: _showUrgenciaPage(context)),
        ),
        Container(
          child: RaisedButton(onPressed: _showFundamentalPage(context)),
        ),
        Container(
          child: RaisedButton(onPressed: _showDiaPage(context)),
        ),
        Container(
          child: RaisedButton(onPressed: _showAcontecimientoPage(context)),
        ),
        Container(
          child: RaisedButton(onPressed: _showCabalaPage(context)),
        ),
      ],

    );
  }
}

_showUrgenciaPage(BuildContext context) {
  Navigator.of(context).pushNamed("/urgencia",
      arguments: UrgenciaPageArguments(name: nameValue, date: dateValue));
}
_showFundamentalPage(BuildContext context){
  Navigator.of(context).pushNamed("/fundamental",
      arguments: FundamentalPageArguments(name:nameValue, date: dateValue));
}
_showDiaPage(BuildContext context){
  Navigator.of(context).pushNamed("/dia",
      arguments: DiaPageArguments(name: nameValue, date: dateValue));
}
_showAcontecimientoPage(BuildContext context){
  Navigator.of(context).pushNamed("/acontecimiento",
      arguments: AcontecimientoPageArguments(name: nameValue, date: dateValue));
}
_showCabalaPage(BuildContext context){
  Navigator.of(context).pushNamed("/cabala",
      arguments: CabalaPageArguments(name: nameValue,date: dateValue));
}
class SecondPageArguments {
  String name;
  String date;

  SecondPageArguments({this.name, this.date});

}