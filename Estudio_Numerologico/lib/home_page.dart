import 'package:flutter/material.dart';
import 'urgencia.dart';
import 'fundamental.dart';
import 'dia.dart';
import 'acontecimiento.dart';
import 'cabala.dart';

String nameValue;
String dateValue;

final nameController = TextEditingController();
final dateController = TextEditingController();
final formKey = GlobalKey<FormState>();

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Zodiaco"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
            key: formKey,
            child: ListView(
              children: <Widget>[
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(labelText: "Nombre Completo"),
                  onSaved: (value) {
                    nameValue = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Debe llenar este campo";
                    }
                  },
                ),
                TextFormField(
                  controller: dateController,
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                      labelText: "Fecha de Nacimiento(dd/mm/aaaa)"),
                  onSaved: (value) {
                    dateValue = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Debe llenar este campo";
                    }
                  },
                ),
                RaisedButton(
                  child: Text("Calcular"),
                  onPressed: () {
                    _showSecondPage(context);
                  },
                ),
              ],
            )),
      ),
    );
  }
}

_showSecondPage(BuildContext context) {
  if (formKey.currentState.validate()) {
    formKey.currentState.save();
    Navigator.of(context).pushNamed("/urgencia",
        arguments: UrgenciaPageArguments(name: nameValue, date: dateValue));
  }
}