import 'package:flutter/material.dart';
import 'package:new_buddy/COLORS_MORE.dart';
import 'package:new_buddy/widgets/form/bd_formlogin.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    double VW = MediaQuery.of(context).size.width;
    double VH = MediaQuery.of(context).size.height;
    
    return Scaffold(
      body: Container(
        height: VH,
        child: Container(
          color: Color.fromARGB(255, 255, 255, 255),
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                  width: VW,
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
                  child: Container(
                    width: 250,
                    height: 250,
                    child: Image.asset('assets/images/04.png'),
                  ), //jidjdjd
                ),
          
            Container(
                padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                child: FormLogIn(),
            ),
            Column(
              children: [
                SizedBox.fromSize(
                  size: Size(VW, 60),
                ),
                Container(
                  width: VW,
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
                  child: Container(
                    width: 200,
                    height: 50,
                    child: Image.asset(color: Color.fromRGBO(31, 85, 210, 1),'assets/images/logo_bd_white.png'),
                  ), //jidjdjd
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
