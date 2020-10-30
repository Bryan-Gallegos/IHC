import 'package:flutter/material.dart';

class AcontecimientoPage extends StatelessWidget {
  const AcontecimientoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AcontecimientoPageArguments args = ModalRoute.of(context).settings.arguments;

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
  AcontecimientoPageArguments({this.name, this.date});
}