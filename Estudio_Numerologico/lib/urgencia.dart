import 'package:flutter/material.dart';
import 'fundamental.dart';
int urgencia=0;
String nameValue;
String dateValue;
var textos=new List(9);
var texto;

class UrgenciaPage extends StatelessWidget {
  const UrgenciaPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UrgenciaPageArguments args = ModalRoute.of(context).settings.arguments;

    textos[0]='emprendedora, original, con voluntad.';
    textos[1]='sociable, con imagincación.';
    textos[2]='creativa, con arte y belleza.';
    textos[3]='firme, sólida.';
    textos[4]='razonativa, con rigor, propensa al aprendizaje';
    textos[5]='cariñosa, indecisa.';
    textos[6]='tendiente a luchar.';
    textos[7]='paciente.';
    textos[8]='generosa, con ideas geniales, independiente.';

    nameValue=args.name;
    dateValue=args.date;
    int day=int.parse(args.date.substring(0,1))+int.parse(args.date.substring(1,2));
    int month=int.parse(args.date.substring(3,4))+int.parse(args.date.substring(4,5));
    int year=int.parse(args.date.substring(6,7))+int.parse(args.date.substring(7,8))+int.parse(args.date.substring(8,9))+int.parse(args.date.substring(9,10));
    print(day);
    print(month);
    print(year);
    if(day>=10){
      String d=day.toString();
      urgencia+=int.parse(d.substring(0,1))+int.parse(d.substring(1,d.length));
    }else{
      urgencia+=day;
    }
    if(month>=10){
      String m=month.toString();
      urgencia+=int.parse(m.substring(0,1))+int.parse(m.substring(1,m.length));
    }else{
      urgencia+=month;
    }
    if(year>=10){
      String y=year.toString();
      urgencia+=int.parse(y.substring(0,1))+int.parse(y.substring(1,y.length));
    }else{
      urgencia+=year;
    }
    if(urgencia>=10){
      String u=urgencia.toString();
      urgencia=int.parse(u.substring(0,1))+int.parse(u.substring(1,u.length));
    }
    switch(urgencia){
      case 1:
        texto=textos[0];
        break;
      case 2:
        texto=textos[1];
        break;
      case 3:
        texto=textos[2];
        break;
      case 4:
        texto=textos[3];
        break;
      case 5:
        texto=textos[4];
        break;
      case 6:
        texto=textos[5];
        break;
      case 7:
        texto=textos[6];
        break;
      case 8:
        texto=textos[7];
        break;
      case 9:
        texto=textos[8];
        break;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Urgencia Interior"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Urgencia Interior: \n'+ urgencia.toString(),
                style: TextStyle(
                  fontSize: 35,
                  fontFamily: 'rBold'
                ),
              ),
            ),
            Container(
              width: 675,
              height: 675,
              child: Image.asset('assets/images/arcano_'+urgencia.toString()+'.PNG'),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'La urgencia interior, es cómo tendemos a ser, como un signo zodiacal pero numérico.\n'+'Este número hace a la persona '+texto,
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'rBold'
                ),
              ),
            ),
            RaisedButton(
              child: Text("Ver Tónica Fundamental"),
              onPressed: () {
                _showFundamentalPage(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class UrgenciaPageArguments {
  String name;
  String date;
  UrgenciaPageArguments({this.name, this.date});
}
_showFundamentalPage(BuildContext context){

    Navigator.of(context).pushNamed("/fundamental",
        arguments: FundamentalPageArguments(name: nameValue, date: dateValue, urgencia: urgencia));

}