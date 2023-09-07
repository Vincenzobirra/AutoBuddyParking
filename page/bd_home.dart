import 'package:new_buddy/TEXT.dart';
import 'package:flutter/material.dart';
import 'package:new_buddy/COLORS_MORE.dart';
import 'package:new_buddy/utility/getToken.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    double VW = MediaQuery.of(context).size.width;
    //double VH = MediaQuery.of(context).size.height;
    getToken();
    
    return Scaffold(
      body: Scaffold(
        body: Container(
          color: COLOR_PRIMARY,
          width: MediaQuery.of(context).size.width,
          child: Column(children: [
            SizedBox.fromSize(
              size: Size(VW, 200),
            ),
            Container(
              width: 200,
              color: Colors.transparent,
              child: Image.asset('assets/images/logo_bd_white.png'), //jidjdjd
            ),
            Container(
              padding: EdgeInsets.only(top: 40),
              child: ElevatedButton(
                style:
                    ElevatedButton.styleFrom(minimumSize: Size(VW * 0.6, 40)),
                onPressed: () {
                  Navigator.pushNamed(context, "/bd_login");
                },
                child: Text(
                  TEXT_it['sign_in'],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: COLOR_PRIMARY,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: ElevatedButton(
                style:
                    ElevatedButton.styleFrom(minimumSize: Size(VW * 0.6, 40)),
                onPressed: () => {Navigator.pushNamed(context, "/bd_register")},
                child: Text(
                  TEXT_it['register'],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: COLOR_PRIMARY,
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
