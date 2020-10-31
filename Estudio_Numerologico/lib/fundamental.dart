import 'package:flutter/material.dart';
import 'dia.dart';
String nameValue;
String dateValue;
int urgencia;
int fun;
var list=new List(3);
var textos=new List(9);
var texto;

class FundamentalPage extends StatelessWidget {
  const FundamentalPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FundamentalPageArguments args = ModalRoute.of(context).settings.arguments;
    textos[0]='que trabajar con mucha voluntad, con ideas originales, ser emprendedor.';
    textos[1]='aprender a asociarse con los demás, escuchar opiniones contrarias sin enojarse, desarrollar la imaginación creadora.';
    textos[2]='trabajar con arte y belleza en todo lo que haga, en el vestir, en el hablar.';
    textos[3]='poner las bases firmes en sus proyectos y trabajos.';
    textos[4]='ver el pro y el contra de todo lo que se proponga.';
    textos[5]='decisivo y poner cariño a lo que haga.';
    textos[6]='poner mucho empeño en todo lo que haga.';
    textos[7]='ser muy paciente, saber esperar.';
    textos[8]='ser generosa y genial, de preferencia trabajar independientemente.';

    nameValue=args.name;
    dateValue=args.date;
    urgencia=args.urgencia;
    var list1=nameValue.split(' ');
    int N1=list1[0].length;
    int N2=list1[1].length;
    int N3=list1[2].length;
    int N4=list1[3].length;
    int nsum=N1+N2+N3+N4;
    if(nsum>=10){
      String nnsum=nsum.toString();
      nsum=int.parse(nnsum.substring(0,1))+int.parse(nnsum.substring(1));
      print(nsum);
      if(nsum>=10){
        String nnsum=nsum.toString();
        nsum=int.parse(nnsum.substring(0,1))+int.parse(nnsum.substring(1));
        print(nsum);
      }
    }
    list=dateValue.split('/');
    int D1=int.parse(list[0].substring(0,1));
    int D2=int.parse(list[0].substring(1));
    int M1=int.parse(list[1].substring(0,1));
    int M2=int.parse(list[1].substring(1));
    int A1=int.parse(list[2].substring(0,1));
    int A2=int.parse(list[2].substring(1,2));
    int A3=int.parse(list[2].substring(2,3));
    int A4=int.parse(list[2].substring(3));
    int sumD=D1+D2;
    int sumM=M1+M2;
    int sumA=A1+A2+A3+A4;
    if(sumD>=10){
      String dsum=sumD.toString();
      sumD=int.parse(dsum.substring(0,1))+int.parse(dsum.substring(1,dsum.length));
      print(sumD);
    }
    print(sumM);
    if(sumA>=10){
      String asum=sumA.toString();
      sumA=int.parse(asum.substring(0,1))+int.parse(asum.substring(1,asum.length));
      print(sumA);
      if(sumA>=10){
        String asum=sumA.toString();
        sumA=int.parse(asum.substring(0,1))+int.parse(asum.substring(1,asum.length));
        print(sumA);
      }
    }
    fun=nsum+urgencia;
    if(fun>=10){
      String dTF=fun.toString();
      fun=int.parse(dTF.substring(0,1))+int.parse(dTF.substring(1,dTF.length));
    }

    switch(fun){
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
        title: Text("Tónica Fundamental"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Tónica Fundamental: \n'+fun.toString(),
                style: TextStyle(
                  fontSize: 35,
                  fontFamily: 'rBold'
                ),
              ),
            ),
            Container(
              width: 675,
              height: 675,
              child: Image.asset('assets/images/arcano_'+fun.toString()+'.PNG'),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'La Tónica Fundamental, es en lo que tenemos que trabajar para triunfar en la vida.\n'+'Este número indica que la persona tiene '+texto,
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'rBold'
                ),
              ),
            ),
            RaisedButton(
              child: Text("Ver Tónica del Día"),
              onPressed: () {
                _showDiaPage(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class FundamentalPageArguments {
  String name;
  String date;
  int urgencia;
  FundamentalPageArguments({this.name, this.date,this.urgencia});
}
_showDiaPage(BuildContext context){
  Navigator.of(context).pushNamed("/dia",
      arguments: DiaPageArguments(name: nameValue, date: dateValue, fundamental: fun, urgencia: urgencia));
}