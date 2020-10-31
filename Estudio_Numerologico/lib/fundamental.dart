import 'package:flutter/material.dart';
import 'dia.dart';
String nameValue;
String dateValue;
int urgencia;
int fun;
var list=new List(3);
class FundamentalPage extends StatelessWidget {
  const FundamentalPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FundamentalPageArguments args = ModalRoute.of(context).settings.arguments;
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
                'La Tónica Fundamental, es en lo que tenemos que trabajar para triunfar en la vida.\n'+'Este número indica que la persona tiene ',
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