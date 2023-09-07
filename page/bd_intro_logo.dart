import 'package:flutter/material.dart';
import 'package:new_buddy/Global.dart';
import 'package:new_buddy/COLORS_MORE.dart';
import 'package:new_buddy/utility/getToken.dart';
import 'package:new_buddy/utility/loginUser.dart';
import 'package:new_buddy/utility/getPayments.dart';
import 'package:new_buddy/utility/getVehicles.dart';
import 'package:new_buddy/widgets/form/bd_formlogin.dart';

class Intro extends StatefulWidget{
  @override
  IntroState createState () => IntroState();
}



class IntroState extends State<Intro> {
  IntroState();

  Future goToLogIn(context) async {
    await Future.delayed(Duration(seconds: 3));
    if( preferences?.getBool('remember') == true && await logInUser(preferences?.getString('email') ?? '', preferences?.getString('password') ?? '', preferences?.getBool('remember')) ){
      Navigator.pushNamed(context, "/bd_map", arguments: {'page' : 'map'});
      return;
    }
    Navigator.pushNamedAndRemoveUntil(context, '/bd_log_or_register', (route) => false);
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {

      getToken().then((result){
        getVehicles().then(( resultVehicle ) {
          getPayments().then((resultPayments) {
                if(result && resultVehicle! && resultPayments! ){
                  preferences != null && preferences!.getString('vehicleSelected') != null ? selectedVehicle = preferences!.getString('vehicleSelected') ?? '' : '';
                  goToLogIn(context);
                }
          });

       
        });
       
      });
      
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
  
    double VW = MediaQuery.of(context).size.width;
    double VH = MediaQuery.of(context).size.height;
  
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(31, 85, 210, 1),
        height: VH,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
            Column(
              children: [
                SizedBox.fromSize(
                  size: Size(VW, VH/2 - 75),
                ),
                Container(
                  width: VW,
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
                  child: Container(
                    width: 200 ,
                    height: 200,
                    child: Image.asset( width: 100,'assets/images/animatobianco.gif'),
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
