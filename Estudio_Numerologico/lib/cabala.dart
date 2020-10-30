import 'package:flutter/material.dart';

class CabalaPage extends StatelessWidget {
  const CabalaPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CabalaPageArguments args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("Cábala del Año"),
      ),
      body: Center(
        child: Text(args.name),
      ),
    );
  }
}

class CabalaPageArguments {
  String name;
  String date;
  CabalaPageArguments({this.name, this.date});
}