import 'package:flutter/material.dart';
import 'home_page.dart';
String nameValue;
String dateValue;
int nacimiento,nacimiento1,nacimiento2,nacimiento3,nacimiento4,nacimiento5;
int n1,n2,n3,n4,n5;
class CabalaPage extends StatelessWidget {
  const CabalaPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CabalaPageArguments args = ModalRoute.of(context).settings.arguments;
    nameValue=args.name;
    dateValue=args.date;

    String n=dateValue.toString();
    nacimiento=int.parse(n.substring(6,n.length));

    String na1=nacimiento.toString();
    nacimiento1=nacimiento+int.parse(na1.substring(0,1))+int.parse(na1.substring(1,2))+int.parse(na1.substring(2,3))+int.parse(na1.substring(3,4));

    String na1_1=nacimiento1.toString();
    print('--------------------------');
    n1=int.parse(na1_1.substring(0,1))+int.parse(na1_1.substring(1,2))+int.parse(na1_1.substring(2,3))+int.parse(na1_1.substring(3,4));
    print(n1);
    if(n1>=10){
      String n1_1=n1.toString();
      n1=int.parse(n1_1.substring(0,1))+int.parse(n1_1.substring(1,2));
    }
    print(n1);
    if(n1>=10){
      String n1_2=n1.toString();
      n1=int.parse(n1_2.substring(0,1))+int.parse(n1_2.substring(1,2));
    }
    print(n1);
    if(n1>=10){
      String n1_3=n1.toString();
      n1=int.parse(n1_3.substring(0,1))+int.parse(n1_3.substring(1,2));
    }
    print(n1);

    String na2=nacimiento1.toString();
    nacimiento2=nacimiento1+int.parse(na2.substring(0,1))+int.parse(na2.substring(1,2))+int.parse(na2.substring(2,3))+int.parse(na2.substring(3,4));
    String na2_1=nacimiento2.toString();
    n2=int.parse(na2_1.substring(0,1))+int.parse(na2_1.substring(1,2))+int.parse(na2_1.substring(2,3))+int.parse(na2_1.substring(3,4));
    if(n2>=10){
      String n2_1=n2.toString();
      n2=int.parse(n2_1.substring(0,1))+int.parse(n2_1.substring(1,2));
    }
    if(n2>=10){
      String n2_2=n2.toString();
      n2=int.parse(n2_2.substring(0,1))+int.parse(n2_2.substring(1,2));
    }
    if(n2>=10){
      String n2_3=n2.toString();
      n2=int.parse(n2_3.substring(0,1))+int.parse(n2_3.substring(1,2));
    }

    String na3=nacimiento2.toString();
    nacimiento3=nacimiento2+int.parse(na3.substring(0,1))+int.parse(na3.substring(1,2))+int.parse(na3.substring(2,3))+int.parse(na3.substring(3,4));
    String na3_1=nacimiento3.toString();
    n3=int.parse(na3_1.substring(0,1))+int.parse(na3_1.substring(1,2))+int.parse(na3_1.substring(2,3))+int.parse(na3_1.substring(3,4));
    if(n3>=10) {
      String n3_1 = n3.toString();
      n3 = int.parse(n3_1.substring(0, 1)) + int.parse(n3_1.substring(1, 2));
    }
    if(n3>=10){
      String n3_2=n3.toString();
      n3=int.parse(n3_2.substring(0,1))+int.parse(n3_2.substring(1,2));
    }
      if(n3>=10){
        String n3_3=n3.toString();
        n3=int.parse(n3_3.substring(0,1))+int.parse(n3_3.substring(1,2));
      }


    String na4=nacimiento3.toString();
    nacimiento4=nacimiento3+int.parse(na4.substring(0,1))+int.parse(na4.substring(1,2))+int.parse(na4.substring(2,3))+int.parse(na4.substring(3,4));
    String na4_1=nacimiento4.toString();
    n4=int.parse(na4_1.substring(0,1))+int.parse(na4_1.substring(1,2))+int.parse(na4_1.substring(2,3))+int.parse(na4_1.substring(3,4));
    if(n4>=10) {
      String n4_1 = n4.toString();
      n4 = int.parse(n4_1.substring(0, 1)) + int.parse(n4_1.substring(1, 2));
    }
    if(n4>=10){
      String n4_2=n4.toString();
      n4=int.parse(n4_2.substring(0,1))+int.parse(n4_2.substring(1,2));
    }
      if(n4>=10){
        String n4_3=n4.toString();
        n4=int.parse(n4_3.substring(0,1))+int.parse(n4_3.substring(1,2));
      }

    String na5=nacimiento4.toString();
    nacimiento5=nacimiento4+int.parse(na5.substring(0,1))+int.parse(na5.substring(1,2))+int.parse(na5.substring(2,3))+int.parse(na5.substring(3,4));
    String na5_1=nacimiento5.toString();
    n5=int.parse(na5_1.substring(0,1))+int.parse(na5_1.substring(1,2))+int.parse(na5_1.substring(2,3))+int.parse(na5_1.substring(3,4));
    if(n5>=10) {
      String n5_1 = n5.toString();
      n5 = int.parse(n5_1.substring(0, 1)) + int.parse(n5_1.substring(1, 2));
    }
    if(n5>=10){
      String n5_2=n5.toString();
      n5=int.parse(n5_2.substring(0,1))+int.parse(n5_2.substring(1,2));
    }
    if(n5>=10){
      String n5_3=n5.toString();
      n5=int.parse(n5_3.substring(0,1))+int.parse(n5_3.substring(1,2));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Cábala del Año"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Cábala del Año: \n',
                style: TextStyle(
                    fontSize: 35,
                    fontFamily: 'rBold'
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                '\n\n\n\nDurante la vida tenemos años espaciales relacionados con la ley de causa y efecto (Karma), dependerá de uno si el número nos favorezca o esté en contra de uno, por sus actos:\n\n'+
                    'Año: '+nacimiento1.toString()+', número regente: '+n1.toString()+'\n'+
                    'Año: '+nacimiento2.toString()+', número regente: '+n2.toString()+'\n'+
                    'Año: '+nacimiento3.toString()+', número regente: '+n3.toString()+'\n'+
                    'Año: '+nacimiento4.toString()+', número regente: '+n4.toString()+'\n'+
                    'Año: '+nacimiento5.toString()+', número regente: '+n5.toString()+'\n' ,
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'rBold'
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
    class CabalaPageArguments {
    String name;
    String date;
    CabalaPageArguments({this.name, this.date});
    }
