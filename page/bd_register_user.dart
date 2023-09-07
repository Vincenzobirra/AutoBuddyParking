import 'package:flutter/material.dart';
import 'package:new_buddy/COLORS_MORE.dart';
import 'package:new_buddy/widgets/form/bd_formRegister.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    double VW = MediaQuery.of(context).size.width;
    double VH = MediaQuery.of(context).size.height;

    return Scaffold(
      body:
      Container(
          color: Color.fromARGB(255, 255, 255, 255),
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
                SizedBox.fromSize(
                      size: Size(VW, 0 ),
                    ),
                Container(
                      height: 300,
                      color: Color.fromARGB(0, 236, 34, 34),
                      width: VW,
                      padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
                      child: Image.asset('assets/images/05.png',scale: 2,),
                    ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 0, 90, 0),
                  child: FormRegister()
                ),
                SizedBox(height: 50,),
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
    );
  }
}
