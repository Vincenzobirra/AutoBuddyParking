import 'package:flutter/material.dart';
import 'package:new_buddy/Global.dart';
import 'package:new_buddy/COLORS_MORE.dart';
import 'package:new_buddy/widgets/bd_fixed_navBar.dart';
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

class BuddyMap extends StatefulWidget {
  const BuddyMap({super.key});

  @override 
  State<BuddyMap> createState() => _BuddyMapState();
}

class _BuddyMapState extends State<BuddyMap> {

  @override
  void initState() {
    page = 'map';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromARGB(255, 247, 244, 244),
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            SizedBox(height: 0),
            Column(
                children: [
                  SizedBox(height: 50,),
                  Container(
                    width: 300,
                    height: 40,
                    child: TextField(
                      decoration: text_field_decoration( 'Dove si va?', Icons.search ),
                    ),
                  ),
                  SizedBox(height: 40,),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/bd_info_garage");
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      decoration: BoxDecoration(
                        //borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.yellow,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage('https://www.c2dh.uni.lu/sites/default/files/styles/full_width/public/field/image/capture.png?itok=REb8jh_H')
                        )),
                      child: Text(''),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: 200,
                    child: Text('Fai zomm sulla mappa vedere i garage o cerca pre indirizzo', textAlign: TextAlign.center,)
                  ),
                ],
              ),
                Expanded(child: Container()),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: FixedNavBar())
          ],
        ),
      ),
    );
  }
}
