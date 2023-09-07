import 'package:flutter/material.dart';
import 'package:new_buddy/COLORS_MORE.dart';
import 'package:new_buddy/widgets/form/bd_formlogin.dart';

class LogOrRegister extends StatelessWidget {
  const LogOrRegister({super.key});


  @override
  Widget build(BuildContext context) {
    double VW = MediaQuery.of(context).size.width;
    double VH = MediaQuery.of(context).size.height;
    

    return Scaffold(
      body: Container(
        color: Color.fromRGBO(255, 255, 255, 1),
        height: VH,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
            Column(
              children: [
                SizedBox.fromSize(
                  size: Size(0, 40),
                ),
                Container(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  width: VW,
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
                  child: Container(
                    width: 150,
                    height: 300,
                    child: Image.asset('assets/images/01.png'),
                  ), //jidjdjd
                ),
                Container(
                  width: 150,
                  child: Text( textAlign: TextAlign.center,'Stanco di girare per un posto auto?' )
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  width: 250,
                  height: 45,
                  child: ElevatedButton(onPressed: () { Navigator.pushNamed(context, "/bd_login"); }, child: Text('Accedi', style: TextStyle(color: Colors.white, fontSize: 20),), style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(31, 85, 210, 1)),)
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  width: 250,
                  height: 45,
                  child: ElevatedButton(onPressed: () { Navigator.pushNamed(context, "/bd_register"); }, child: Text('Registrati', style: TextStyle(color: Colors.white, fontSize: 20),), style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(31, 85, 210, 1)),)
                )
              ],
            ),
            SizedBox(height: 40,),
             Container(
                  width: VW,
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
                  child: Container(
                    width: 200,
                    height: 50,
                    child: Image.asset(color: Color.fromRGBO(31, 85, 210, 1),'assets/images/logo_bd_white.png'),
                  ), //jidjdjd
                ),
          ]),
        ),
      ),
    );
  }
}
