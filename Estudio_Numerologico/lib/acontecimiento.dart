import 'package:flutter/material.dart';
import 'cabala.dart';
String nameValue;
String dateValue;
int urgencia;
int fundamental;
int dia;
int acontecimiento;
int hora;
class AcontecimientoPage extends StatelessWidget {
  const AcontecimientoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AcontecimientoPageArguments args = ModalRoute.of(context).settings.arguments;
    nameValue=args.name;
    dateValue=args.date;
    fundamental=args.fundamental;
    urgencia=args.urgencia;
    dia=args.dia;
    DateTime now=DateTime.now();
    String hoy=now.toString();

    hora=int.parse(hoy.substring(11,13));
    acontecimiento=dia+hora;

    if(acontecimiento>=10){
      String acon=acontecimiento.toString();
      acontecimiento=int.parse(acon.substring(0,1))+int.parse(acon.substring(1,2));
    }
    if(acontecimiento>=10){
      String acon1=acontecimiento.toString();
      acontecimiento=int.parse(acon1.substring(0,1))+int.parse(acon1.substring(1,2));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Acontecimiento del Día"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Acontecimiento del día: \n'+acontecimiento.toString(),
                style: TextStyle(
                    fontSize: 35,
                    fontFamily: 'rBold'
                ),
              ),
            ),
            RaisedButton(
              child: Text("Ver Cábala del Año"),
              onPressed: () {
                _showCabalaPage(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class AcontecimientoPageArguments {
  String name;
  String date;
  int fundamental;
  int urgencia;
  int dia;
  AcontecimientoPageArguments({this.name, this.date, this.fundamental, this.urgencia, this.dia});
}
_showCabalaPage(BuildContext context){
  Navigator.of(context).pushNamed("/cabala",
      arguments: CabalaPageArguments(name: nameValue, date: dateValue));
}