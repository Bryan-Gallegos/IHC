import 'package:flutter/material.dart';
String nameValue;
String dateValue;
int urgencia;
int fundamental;
class AcontecimientoPage extends StatelessWidget {
  const AcontecimientoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AcontecimientoPageArguments args = ModalRoute.of(context).settings.arguments;
    nameValue=args.name;
    dateValue=args.date;
    fundamental=args.fundamental;
    urgencia=args.urgencia;
    return Scaffold(
      appBar: AppBar(
        title: Text("Acontecimiento del Día"),
      ),
      body: Center(
        child: Text(args.name),
      ),
    );
  }
}

class AcontecimientoPageArguments {
  String name;
  String date;
  int fundamental;
  int urgencia;
  AcontecimientoPageArguments({this.name, this.date, this.fundamental, this.urgencia});
}