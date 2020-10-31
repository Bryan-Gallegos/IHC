import 'package:flutter/material.dart';
import 'package:minota/urgencia.dart';
import 'acontecimiento.dart';
String nameValue;
String dateValue;
int urgencia;
int fundamental;
int dia;
String fecha;
int ysum2;
int year;
int month;
int day;
var textos=new List(9);
var texto;
class DiaPage extends StatelessWidget {
  const DiaPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DiaPageArguments args = ModalRoute.of(context).settings.arguments;
    textos[0]='trabajar con mucha voluntad, con ideas originales, ser emprendedor.';
    textos[1]='aprender a asociarse con los demás, escuchar opiniones contrarias sin enojarse, desarrollar la imaginación creadora.';
    textos[2]='trabajar con arte y belleza en todo lo que haga, en el vestir, en el hablar.';
    textos[3]='poner las bases firmes en sus proyectos y trabajos.';
    textos[4]='ver el pro y el contra de todo lo que se proponga.';
    textos[5]='ser decisivo y poner cariño a lo que haga.';
    textos[6]='poner mucho empeño en todo lo que haga.';
    textos[7]='ser muy paciente, saber esperar.';
    textos[8]='ser generosa y genial, de preferencia trabajar independientemente.';

    nameValue=args.name;
    dateValue=args.date;
    fundamental=args.fundamental;
    urgencia=args.urgencia;
    DateTime now=DateTime.now();
    String hoy=now.toString();
    fecha=hoy.substring(0,10);
    int ysum=0;
    DateTime date=new DateTime(year=now.year,month=now.month,day=now.day);
    if(day>=10){
      String d=day.toString();
      dia=int.parse(d.substring(0,1))+int.parse(d.substring(1,2));
    }else{
      dia=day;
    }

    if(month>=10){
      String m=month.toString();
      dia+=int.parse(m.substring(0,1))+int.parse(m.substring(1,2));
    }else{
      dia+=month;
    }
    String y=year.toString();
    ysum=int.parse(y.substring(0,1))+int.parse(y.substring(1,2))+int.parse(y.substring(2,3))+int.parse(y.substring(3,4));
    if(ysum>=10){
      String ysum1=ysum.toString();
      dia+=int.parse(ysum1.substring(0,1))+int.parse(ysum1.substring(1,2));
    }else{
      dia+=ysum;
    }

    dia+=fundamental;

    if(dia>=10){
      String day=dia.toString();
      dia=int.parse(day.substring(0,1))+int.parse(day.substring(1,2));
    }
     switch(dia){
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
        title: Text("Tónica del Día"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Tónica del día: \n'+dia.toString(),
                style: TextStyle(
                  fontSize: 35,
                  fontFamily: 'rBold'
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                '\n\n\n\n\n\n\nTu número para hoy '+fecha.toString()+' es: '+dia.toString()+', lo que indica que para tener más probabilidades de éxito en lo que uno se proponga, la persona en este día, habría que: '+
                texto,
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'rBold'
                ),
              ),
            ),
            RaisedButton(
              child: Text("Ver Acontecimiento del Día"),
              onPressed: () {
                _showAcontecimientoPage(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DiaPageArguments {
  String name;
  String date;
  int fundamental;
  int urgencia;
  DiaPageArguments({this.name, this.date, this.fundamental, this.urgencia});
}
_showAcontecimientoPage(BuildContext context){
  Navigator.of(context).pushNamed("/acontecimiento",
      arguments: AcontecimientoPageArguments(name: nameValue, date: dateValue, fundamental: fundamental, urgencia: urgencia, dia: dia));
}