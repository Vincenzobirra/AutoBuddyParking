import 'dart:math';
import 'package:new_buddy/Global.dart';
import 'package:flutter/material.dart';
import 'package:new_buddy/COLORS_MORE.dart';
import 'package:new_buddy/widgets/bd_fixed_navBar.dart';
import 'package:new_buddy/widgets/form/bd_formVehicles.dart';

// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

class HomePersonalData extends StatefulWidget {
  const HomePersonalData({super.key});

  @override
  State<HomePersonalData> createState() => HomePersonalDataState();
}

class HomePersonalDataState extends State<HomePersonalData> {
  final _key_form = GlobalKey<FormState>();
  int size = 1;
  String license = '';
  int wheels = 2;
  String vehi = '';

  void selectedVehicleFn() {
  vehicles.forEach((element) {
    print(element);
    if(element['id'].toString() == selectedVehicle.toString()){
      vehi = element['license'];
      setState(() {
        
      });
    }
  });
    print('errore');
  }

  @override
  void initState() {
    selectedVehicleFn();
    super.initState();
  }

  Future dialogAddVehicle( String? id ) => showDialog(
    
    context: context, 
    builder: (context) => AlertDialog(
      backgroundColor: Color.fromARGB(255, 240, 241, 251),
      content: FormVehicles(id: id, key: UniqueKey(),),
    )
  );

  @override
  Widget build(BuildContext context) {
    double VW = MediaQuery.of(context).size.width;
    double VH = MediaQuery.of(context).size.height;
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: COLOR_SOFT_BLACK,
        child: Column(
          children: [
                Container(
                  margin: EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 5.5,
                  decoration: BoxDecoration(
                    color: COLOR_PRIMARY,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width / 3,
                        decoration: BoxDecoration(
                            image: DecorationImage(fit: BoxFit.cover, image: user['profile_image'] != null && NetworkImage( ENDPOINT_AUTOBUDDY + user['profile_image'] + '?' + Random().nextInt(1000).toString() ) != null ? NetworkImage(ENDPOINT_AUTOBUDDY + user['profile_image'] + '?' +Random().nextInt(1000).toString()) : NetworkImage('https://img.freepik.com/premium-vector/bald-empty-face-icon-avatar-vector-illustration_601298-13391.jpg?w=2000'),) ,
                            color: Color.fromARGB(255, 240, 241, 251),
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                        )
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text( 
                              user['first_name'],
                              style: TextStyle(color: Colors.white, fontSize: 35),
                            ),
                            Text( 
                              '06/08/1991',     //user['age'],
                              style: TextStyle(color: Colors.grey, fontSize: 20),
                            )
                          ],
                        ),
                      )
                    ],)
                  ),
                Stack(
                  children: [
                    GestureDetector(
                      child: Container(
                        margin: EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 6,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Container(
                          padding: EdgeInsets.all(5),
                          child: Text('Modifica Anagrafica',  style: TextStyle(height: 1, fontSize: 40, color: Color.fromARGB(255, 57, 57, 57)), )
                        ),
                        ),
                        onTap: () async {
                          Navigator.pushNamed(context, "/bd_setting_user");
                        },
                    ),
                    Positioned(
                      right: 5,
                      top: 5,
                      child: Transform.rotate(
                        angle: 6,
                        child: Icon(color: const Color.fromARGB(207, 158, 158, 158), Icons.arrow_circle_right, size: 40, ), 
                      ) ,
                      ),
                  ],
                ),
                  Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2 -5,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 240, 241, 251),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Intensità Traffico', style: TextStyle( fontSize: 30, color: Color.fromARGB(255, 57, 57, 57), fontWeight: FontWeight.bold), ),
                      Text('Milano', style: TextStyle( fontSize: 18, color: Color.fromARGB(255, 57, 57, 57)), ),
                      Expanded(child: Container()),
                      Container(
                        margin: EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 4,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Text('Questo mese hai usato AutoBuddy 2 volte!',  style: TextStyle(fontWeight: FontWeight.bold, height: 1, fontSize: 20, color: Color.fromARGB(255, 57, 57, 57)), ),
                              Text('Ottimo lavoro, hai contribuito a meno emissioni e meno stress.',  style: TextStyle(height: 1, fontSize: 15, color: Color.fromARGB(255, 57, 57, 57)), ),
                            ],
                          )
                        ),
                        ),
                    ],
                  )
                  ),
                  Expanded(child: Container()),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: FixedNavBar()
                ),
          ],
        ),
      ),
    );
  }
}
