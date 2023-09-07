import 'dart:math';
import 'package:new_buddy/Global.dart';
import 'package:flutter/material.dart';
import 'package:new_buddy/COLORS_MORE.dart';
import 'package:new_buddy/widgets/bd_fixed_navBar.dart';




class ReviewsGarage extends StatefulWidget {
  ReviewsGarage({Key? key}) : super(key: key);

  @override
  ReviewsGarageState createState() => ReviewsGarageState();
}

class ReviewsGarageState extends State<ReviewsGarage> {
  String vehi = '';


 void selectedVehicleFn() {
  vehicles.forEach((element) {
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
    page = 'dash';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: COLOR_SOFT_BLACK,
        child: Column(
          children: [
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      width: MediaQuery.of(context).size.width,
                      height: 115,
                      decoration: BoxDecoration(
                        color: Color(0xFF2054D6),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(10, 10, 15, 10),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end ,
                              children: [
                                Text('Recensioni', style: TextStyle( fontSize: 35, color: Color.fromARGB(255, 255, 255, 255)), ),
                              ],
                            )
                          ]
                          ),
                      )
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
                Expanded(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(5,10,5,10),
                    margin: EdgeInsets.all(5),
                    width: MediaQuery.of(context).size.width,
                    height: 270,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.all(2),
                              width: MediaQuery.of(context).size.width / 1.1,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 240, 241, 251),
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                                color: Color.fromARGB(0, 0, 0, 0),
                                alignment: Alignment.bottomLeft,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                     Row(
                                       children: [
                                         Container(
                                            margin: EdgeInsets.all(5),
                                            width: 45,
                                            height: 45,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(fit: BoxFit.cover, image: user['profile_image'] != null && NetworkImage( ENDPOINT_AUTOBUDDY + user['profile_image'] + '?' + Random().nextInt(1000).toString() ) != null ? NetworkImage(ENDPOINT_AUTOBUDDY + user['profile_image'] + '?' +Random().nextInt(1000).toString()) : NetworkImage('https://img.freepik.com/premium-vector/bald-empty-face-icon-avatar-vector-illustration_601298-13391.jpg?w=2000'),) ,
                                                color: Color.fromARGB(255, 56, 56, 58),
                                                borderRadius: BorderRadius.all(Radius.circular(50)),
                                            )
                                          ),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('Armando', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 57, 57, 57), ),),
                                              Row( children: [
                                                Icon(Icons.star, size: 20, color: COLOR_PRIMARY,),
                                                Icon(Icons.star, size: 20, color: COLOR_PRIMARY,),
                                                Icon(Icons.star, size: 20, color: COLOR_PRIMARY,),
                                                Icon(Icons.star, size: 20, color: COLOR_PRIMARY,),
                                                Icon(Icons.star, size: 20, color: COLOR_PRIMARY,),
                                              ],),
                                              Text('Molto bello.', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 109, 109, 109), ),),
                                            ],)
                                    ],
                                     ),
                                ],),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(2),
                              width: MediaQuery.of(context).size.width / 1.1,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 240, 241, 251),
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                                color: Color.fromARGB(0, 0, 0, 0),
                                alignment: Alignment.bottomLeft,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                     Row(
                                       children: [
                                         Container(
                                            margin: EdgeInsets.all(5),
                                            width: 45,
                                            height: 45,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(fit: BoxFit.cover, image: user['profile_image'] != null && NetworkImage( ENDPOINT_AUTOBUDDY + user['profile_image'] + '?' + Random().nextInt(1000).toString() ) != null ? NetworkImage(ENDPOINT_AUTOBUDDY + user['profile_image'] + '?' +Random().nextInt(1000).toString()) : NetworkImage('https://img.freepik.com/premium-vector/bald-empty-face-icon-avatar-vector-illustration_601298-13391.jpg?w=2000'),) ,
                                                color: Color.fromARGB(255, 56, 56, 58),
                                                borderRadius: BorderRadius.all(Radius.circular(50)),
                                            )
                                          ),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('Armando', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 57, 57, 57), ),),
                                              Row( children: [
                                                Icon(Icons.star, size: 20, color: COLOR_PRIMARY,),
                                                Icon(Icons.star, size: 20, color: COLOR_PRIMARY,),
                                                Icon(Icons.star, size: 20, color: COLOR_PRIMARY,),
                                                Icon(Icons.star, size: 20, color: COLOR_PRIMARY,),
                                                Icon(Icons.star, size: 20, color: COLOR_PRIMARY,),
                                              ],),
                                              Text('Molto bello.', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 109, 109, 109), ),),
                                            ],)
                                    ],
                                     ),
                                ],),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(2),
                              width: MediaQuery.of(context).size.width / 1.1,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 240, 241, 251),
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                                color: Color.fromARGB(0, 0, 0, 0),
                                alignment: Alignment.bottomLeft,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                     Row(
                                       children: [
                                         Container(
                                            margin: EdgeInsets.all(5),
                                            width: 45,
                                            height: 45,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(fit: BoxFit.cover, image: user['profile_image'] != null && NetworkImage( ENDPOINT_AUTOBUDDY + user['profile_image'] + '?' + Random().nextInt(1000).toString() ) != null ? NetworkImage(ENDPOINT_AUTOBUDDY + user['profile_image'] + '?' +Random().nextInt(1000).toString()) : NetworkImage('https://img.freepik.com/premium-vector/bald-empty-face-icon-avatar-vector-illustration_601298-13391.jpg?w=2000'),) ,
                                                color: Color.fromARGB(255, 56, 56, 58),
                                                borderRadius: BorderRadius.all(Radius.circular(50)),
                                            )
                                          ),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('Armando', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 57, 57, 57), ),),
                                              Row( children: [
                                                Icon(Icons.star, size: 20, color: COLOR_PRIMARY,),
                                                Icon(Icons.star, size: 20, color: COLOR_PRIMARY,),
                                                Icon(Icons.star, size: 20, color: COLOR_PRIMARY,),
                                                Icon(Icons.star, size: 20, color: COLOR_PRIMARY,),
                                                Icon(Icons.star, size: 20, color: COLOR_PRIMARY,),
                                              ],),
                                              Text('Molto bello.', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 109, 109, 109), ),),
                                            ],)
                                    ],
                                     ),
                                ],),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(2),
                              width: MediaQuery.of(context).size.width / 1.1,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 240, 241, 251),
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                                color: Color.fromARGB(0, 0, 0, 0),
                                alignment: Alignment.bottomLeft,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                     Row(
                                       children: [
                                         Container(
                                            margin: EdgeInsets.all(5),
                                            width: 45,
                                            height: 45,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(fit: BoxFit.cover, image: user['profile_image'] != null && NetworkImage( ENDPOINT_AUTOBUDDY + user['profile_image'] + '?' + Random().nextInt(1000).toString() ) != null ? NetworkImage(ENDPOINT_AUTOBUDDY + user['profile_image'] + '?' +Random().nextInt(1000).toString()) : NetworkImage('https://img.freepik.com/premium-vector/bald-empty-face-icon-avatar-vector-illustration_601298-13391.jpg?w=2000'),) ,
                                                color: Color.fromARGB(255, 56, 56, 58),
                                                borderRadius: BorderRadius.all(Radius.circular(50)),
                                            )
                                          ),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('Armando', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 57, 57, 57), ),),
                                              Row( children: [
                                                Icon(Icons.star, size: 20, color: COLOR_PRIMARY,),
                                                Icon(Icons.star, size: 20, color: COLOR_PRIMARY,),
                                                Icon(Icons.star, size: 20, color: COLOR_PRIMARY,),
                                                Icon(Icons.star, size: 20, color: COLOR_PRIMARY,),
                                                Icon(Icons.star, size: 20, color: COLOR_PRIMARY,),
                                              ],),
                                              Text('Molto bello.', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 109, 109, 109), ),),
                                            ],)
                                    ],
                                     ),
                                ],),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(2),
                              width: MediaQuery.of(context).size.width / 1.1,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 240, 241, 251),
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                                color: Color.fromARGB(0, 0, 0, 0),
                                alignment: Alignment.bottomLeft,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                     Row(
                                       children: [
                                         Container(
                                            margin: EdgeInsets.all(5),
                                            width: 45,
                                            height: 45,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(fit: BoxFit.cover, image: user['profile_image'] != null && NetworkImage( ENDPOINT_AUTOBUDDY + user['profile_image'] + '?' + Random().nextInt(1000).toString() ) != null ? NetworkImage(ENDPOINT_AUTOBUDDY + user['profile_image'] + '?' +Random().nextInt(1000).toString()) : NetworkImage('https://img.freepik.com/premium-vector/bald-empty-face-icon-avatar-vector-illustration_601298-13391.jpg?w=2000'),) ,
                                                color: Color.fromARGB(255, 56, 56, 58),
                                                borderRadius: BorderRadius.all(Radius.circular(50)),
                                            )
                                          ),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('Armando', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 57, 57, 57), ),),
                                              Row( children: [
                                                Icon(Icons.star, size: 20, color: COLOR_PRIMARY,),
                                                Icon(Icons.star, size: 20, color: COLOR_PRIMARY,),
                                                Icon(Icons.star, size: 20, color: COLOR_PRIMARY,),
                                                Icon(Icons.star, size: 20, color: COLOR_PRIMARY,),
                                                Icon(Icons.star, size: 20, color: COLOR_PRIMARY,),
                                              ],),
                                              Text('Molto bello.', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 109, 109, 109), ),),
                                            ],)
                                    ],
                                     ),
                                ],),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(2),
                              width: MediaQuery.of(context).size.width / 1.1,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 240, 241, 251),
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                                color: Color.fromARGB(0, 0, 0, 0),
                                alignment: Alignment.bottomLeft,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                     Row(
                                       children: [
                                         Container(
                                            margin: EdgeInsets.all(5),
                                            width: 45,
                                            height: 45,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(fit: BoxFit.cover, image: user['profile_image'] != null && NetworkImage( ENDPOINT_AUTOBUDDY + user['profile_image'] + '?' + Random().nextInt(1000).toString() ) != null ? NetworkImage(ENDPOINT_AUTOBUDDY + user['profile_image'] + '?' +Random().nextInt(1000).toString()) : NetworkImage('https://img.freepik.com/premium-vector/bald-empty-face-icon-avatar-vector-illustration_601298-13391.jpg?w=2000'),) ,
                                                color: Color.fromARGB(255, 56, 56, 58),
                                                borderRadius: BorderRadius.all(Radius.circular(50)),
                                            )
                                          ),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('Armando', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 57, 57, 57), ),),
                                              Row( children: [
                                                Icon(Icons.star, size: 20, color: COLOR_PRIMARY,),
                                                Icon(Icons.star, size: 20, color: COLOR_PRIMARY,),
                                                Icon(Icons.star, size: 20, color: COLOR_PRIMARY,),
                                                Icon(Icons.star, size: 20, color: COLOR_PRIMARY,),
                                                Icon(Icons.star, size: 20, color: COLOR_PRIMARY,),
                                              ],),
                                              Text('Molto bello.', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 109, 109, 109), ),),
                                            ],)
                                    ],
                                     ),
                                ],),
                              ),
                            ),
                        ],),
                    )
                    ),
                ),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Row(
                          children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            width: 150,
                            child: Column(children: [
                              Text('Lascia una recensione', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
                            ]),),
                          ],)
                      ),
                      Positioned(
                          right: 5,
                          top: 5,
                          child: Transform.rotate(
                            angle: 6,
                            child: GestureDetector(
                              child: Icon(color: const Color.fromARGB(207, 158, 158, 158), Icons.arrow_circle_right, size: 40, ),
                              onTap: () {
                                Navigator.pushNamed(context, '/bd_add_review');
                              },
                              
                              ), 
                          ) ,
                        ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
