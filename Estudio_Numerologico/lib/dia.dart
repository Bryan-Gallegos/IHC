import 'package:flutter/material.dart';

class DiaPage extends StatelessWidget {
  const DiaPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DiaPageArguments args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("Tónica del Día"),
      ),
      body: Center(
        child: Text(args.name),
      ),
    );
  }
}

class DiaPageArguments {
  String name;
  String date;
  DiaPageArguments({this.name, this.date});
}