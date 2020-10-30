import 'package:flutter/material.dart';

class FundamentalPage extends StatelessWidget {
  const FundamentalPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FundamentalPageArguments args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("Tónica Fundamental"),
      ),
      body: Center(
        child: Text(args.name),
      ),
    );
  }
}

class FundamentalPageArguments {
  String name;
  String date;
  FundamentalPageArguments({this.name, this.date});
}