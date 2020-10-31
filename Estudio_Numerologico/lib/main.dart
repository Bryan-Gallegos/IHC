import 'package:flutter/material.dart';
import 'home_page.dart';
import 'urgencia.dart';
import 'fundamental.dart';
import 'dia.dart';
import 'acontecimiento.dart';
import 'cabala.dart';


void main() {
  runApp(Login());
}
class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Estudio Numerologico",
      routes:{
        "/": (BuildContext context) => MyHomePage(),
        "/urgencia": (BuildContext context) => UrgenciaPage(),
        "/fundamental": (BuildContext context) => FundamentalPage(),
        "/dia": (BuildContext context) => DiaPage(),
        "/acontecimiento": (BuildContext context) => AcontecimientoPage(),
        "/cabala": (BuildContext context) => CabalaPage(),
      },
    );
  }
}
/*
class Pantalla extends StatefulWidget {
  @override
  _PantallaState createState() => _PantallaState();
}

class _PantallaState extends State<Pantalla> {
  final nombre=TextEditingController();
  final fecha=TextEditingController();
  var list=new List(3);
  String nom='';
  String fec='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Estudio Numerologico"),
          ),
          body: ListView(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical:10,horizontal:40),
                alignment: Alignment.center,
                child: Image.asset('assets/images/Logo1.png'),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child:TextField(
                  controller: nombre,
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                  hintText: 'Ingrese su Nombre',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child:TextField(
                  controller: fecha,
                  keyboardType: TextInputType.datetime,
                  //obscureText: true,
                  decoration: InputDecoration(
                  hintText: 'Fecha de Nacimiento',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical:5,horizontal:100),
                child:RaisedButton(
                  
                  color: Colors.purple[800],
                  child: Text(
                    "Enviar",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily:'rbold', 
                    ),
                  ),
                  onPressed: (){
                    nom=nombre.text;
                    fec=fecha.text;
                    var list1=nom.split(' ');
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
                    list=fec.split('/');
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
                    int uiinterior=sumD+sumM+sumA;
                    if(uiinterior>=10){
                      String dUI=uiinterior.toString();
                      uiinterior=int.parse(dUI.substring(0,1))+int.parse(dUI.substring(1,dUI.length));

                    }
                    print(uiinterior);
                    int tfundamental=nsum+uiinterior;
                    if(tfundamental>=10){
                      String dTF=tfundamental.toString();
                      tfundamental=int.parse(dTF.substring(0,1))+int.parse(dTF.substring(1,dTF.length));
                    }
                    print(tfundamental);//imprime número de tónica fundamental
                    DateTime now=DateTime.now();
                    String hoy=now.toString();
                    int hora=int.parse(hoy.substring(11,13));
                    int year;
                    int month;
                    int day;
                    int tdia=0;
                    int ysum=0;
                    DateTime date=new DateTime(year=now.year,month=now.month,day=now.day);
                    if(day>=10){
                      String d=day.toString();
                      for(var i=0;i<d.length;i++){
                        tdia+=int.parse(d.substring(i,i+1));
                      }
                    }else{
                      tdia+=day;
                    }
                    if(month>=10){
                      String m=month.toString();
                      for(var i=0;i<m.length;i++){
                        tdia+=int.parse(m.substring(i,i+1));
                      }
                    }else{
                      tdia+=month;
                    }
                    String y=year.toString();
                    for(var i=0;i<y.length;i++){
                      ysum+=int.parse(y.substring(i,i+1));
                    }
                    if(ysum>=10){
                      String ysum1=ysum.toString();
                      tdia+=int.parse(ysum1.substring(0,1));
                      tdia+=int.parse(ysum1.substring(1,ysum1.length));
                    }else{
                      tdia+=ysum;
                    }
                    tdia+=tfundamental;
                    if(tdia>=10){
                      String td=tdia.toString();
                      tdia=int.parse(td.substring(0,1))+int.parse(td.substring(1,td.length));
                    }
                    print(tdia);//imprime tu número de tónica del día
                    print(hora);//imprime hora exacta de la consulta
                    if(nom!=''&& fec!=''){
                      Navigator.of(context).push(MaterialPageRoute<Null>(
                        builder: (BuildContext context){
                          return new Bienvenido(nom,fec,uiinterior,tfundamental,tdia);
                        },fullscreenDialog: true,
                      ));
                     
                    }else{
                      showDialog(
                        barrierDismissible: false,//para no salir de la alerta tocando cualquier cosa 
                        context: context,            
                        builder: (BuildContext context){
                          return AlertDialog(
                            title:Text('Dato erroneo'),
                            content: SingleChildScrollView(
                              child:ListBody(
                                children: [
                                  Text('Verifica tus datos'),
                                ],
                              ) ,
                            ),
                            actions: [
                              FlatButton(
                                child:Text('Aceptar'),
                                onPressed: (){
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        }
                      );
                    }
                    //print(nom+' '+fec);//Aqui imprime en consola
                    nombre.text='';
                    fecha.text='';
                  },
                )
              ),
            ],
          ),
      );
  }
}
*/
