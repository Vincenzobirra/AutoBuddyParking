import 'dart:math';
import 'package:new_buddy/Global.dart';
import 'package:flutter/material.dart';
import 'package:new_buddy/COLORS_MORE.dart';
import 'package:new_buddy/widgets/bd_fixed_navBar.dart';
import 'package:new_buddy/widgets/form/bd_formVehicles.dart';

// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

class InfoGarage extends StatefulWidget {
  const InfoGarage({super.key});

  @override
  State<InfoGarage> createState() => InfoGarageState();
}

class InfoGarageState extends State<InfoGarage> {
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
        child: Stack(
          children: [
            Column(
              children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 3,
                        decoration: BoxDecoration(
                          image: DecorationImage( fit: BoxFit.cover, image: NetworkImage('https://akm-img-a-in.tosshub.com/indiatoday/images/story/201806/Jeff_Bezos_0.jpeg?size=690:388') ),
                          color: COLOR_PRIMARY,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(5),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 4,
                      decoration: BoxDecoration(
                        color: COLOR_PRIMARY,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Info garage',  style: TextStyle(height: 1, fontSize: 40, color: Color.fromARGB(255, 255, 255, 255)), ),
                          Text('Via Montenapoleone 12 - MI',  style: TextStyle( fontSize: 18, color: Color.fromARGB(255, 233, 233, 233)), ),
                          Text('26mq - 2.35 altezza',  style: TextStyle( fontSize: 18, color: Color.fromARGB(255, 219, 219, 219)), ),
                          Text('Aperture: 9.00 - 24.00',  style: TextStyle( fontSize: 18, color: Color.fromARGB(255, 206, 204, 204)), ),
                        ],
                      )
                      ),
                    Stack(
                      children: [
                        GestureDetector(
                          child: Container(
                            margin: EdgeInsets.all(5),
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height / 8,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Container(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment:MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Prenota',  style: TextStyle(height: 1, fontSize: 40, color: Color.fromARGB(255, 57, 57, 57)), ),
                                  Text('Prezzo per ora 2.20€',  style: TextStyle( fontSize: 18, color: Color.fromARGB(255, 57, 57, 57)), ),
                                ],
                              )
                            ),
                            ),
                            onTap: () async {
                              Navigator.pushNamed(context, "");
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
                      height: MediaQuery.of(context).size.height / 7,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 240, 241, 251),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: GestureDetector(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Valutazione', style: TextStyle( fontSize: 30, color: Color.fromARGB(255, 57, 57, 57), fontWeight: FontWeight.bold), ),
                            Row( children: [
                              Icon(Icons.star, size: 35, color: COLOR_PRIMARY,),
                              Icon(Icons.star, size: 35, color: COLOR_PRIMARY,),
                              Icon(Icons.star, size: 35, color: COLOR_PRIMARY,),
                              Icon(Icons.star, size: 35, color: COLOR_PRIMARY,),
                              Icon(Icons.star, size: 35, color: COLOR_PRIMARY,),
                            ],)
                          ],
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/bd_reviews_garage');
                        },
                      )
                      ),
              ],
            ),
            Positioned(
              left: 8,
              top: 8,
              child: Transform.rotate(
                angle: 0,
                child: back_arrow(context), 
              ) ,
            ),
          ],
        ),
      ),
    );
  }
}
