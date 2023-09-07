import 'package:new_buddy/Global.dart';
import 'package:flutter/material.dart';
import 'package:new_buddy/COLORS_MORE.dart';
import 'package:new_buddy/widgets/bd_fixed_navBar.dart';



class DashBoard extends StatefulWidget {
  DashBoard({Key? key}) : super(key: key);

  @override
  DashBoardState createState() => DashBoardState();
}

class DashBoardState extends State<DashBoard> {
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
                 Container(
                  margin: EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width,
                  height: 115,
                  decoration: BoxDecoration(
                    color: Color(0xFF2054D6),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                    
                  child: Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 15, 0),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Ciao,', style: TextStyle( fontSize: 35, color: Color.fromARGB(255, 255, 255, 255)), ),
                            Text( user['first_name'] != null ? user['first_name'] : 'noName', style: TextStyle( fontSize: 35, color: Color.fromARGB(255, 255, 255, 255)), ),
                          ],
                        )
                      ]
                      ),
                  )
                  ),
                Container(
                  margin: EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width,
                  height: 270,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                    
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            child: Container(
                              margin: EdgeInsets.all(2),
                              width: MediaQuery.of(context).size.width / 2.2,
                              height: 130,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 240, 241, 251),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                                color: Colors.transparent,
                                alignment: Alignment.bottomLeft,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Portafoglio', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 57, 57, 57), ),),
                                    SizedBox(height: 15,),
                                    Text('Ultima sosta: 20/12/2024', style: TextStyle( fontSize: 12, color: Color.fromARGB(255, 57, 57, 57)),),
                                    Text('Hai pagato: 13,20€', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Color.fromARGB(255, 57, 57, 57)), ),
                                ],),
                              ),
                            ),
                            onTap: () => Navigator.pushNamed(context, "/bd_home_payments"),
                          ),
                          GestureDetector(
                            child: Container(
                              margin: EdgeInsets.all(2),
                              width: MediaQuery.of(context).size.width / 2.2,
                              height: 130,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 240, 241, 251),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                                color: Colors.transparent,
                                alignment: Alignment.bottomLeft,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                  Text('Veicolo', style: TextStyle( fontWeight: FontWeight.bold, fontSize: 15, color: Color.fromARGB(255, 57, 57, 57), ),),
                                  SizedBox(height: 15,),
                                  Text( vehi == '' ? 'Selezione veicolo' : vehi, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Color.fromARGB(255, 57, 57, 57)), ),
                                  Text('Ford Fiesta', style: TextStyle( fontSize: 15, color: Color.fromARGB(255, 57, 57, 57)),),
                                ],),
                              ),
                            ),
                            onTap: () { Navigator.pushNamed(context, "/bd_vehicles");},
                          ),
                        ],),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            child: Container(
                              margin: EdgeInsets.all(2),
                              width: MediaQuery.of(context).size.width / 2.2,
                              height: 130,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 240, 241, 251),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                                color: Colors.transparent,
                                alignment: Alignment.bottomLeft,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                  Text('Anagrafiche', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Color.fromARGB(255, 57, 57, 57), ),),
                                  SizedBox(height: 15,),
                                  Text(user['first_name'], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Color.fromARGB(255, 57, 57, 57)), ),
                                  Text('06/08/1991', style: TextStyle( fontSize: 15, color: Color.fromARGB(255, 57, 57, 57)),),
                                ],),
                              ),
                            ),
                            onTap: () { Navigator.pushNamed(context, "/bd_home_personal_data");},
                          ),
                          GestureDetector(
                            child: Container(
                              margin: EdgeInsets.all(2),
                              width: MediaQuery.of(context).size.width / 2.2,
                              height: 130,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 240, 241, 251),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                                color: Colors.transparent,
                                alignment: Alignment.bottomLeft,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                  Text('Soste', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Color.fromARGB(255, 57, 57, 57), ),),
                                  SizedBox(height: 15,),
                                  Text('Terzigno', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Color.fromARGB(255, 57, 57, 57)), ),
                                  Text('Via dalle Palle, 54', style: TextStyle( fontSize: 15, color: Color.fromARGB(255, 57, 57, 57)),),
                                ],),
                              ),
                            ),
                            onTap: () { Navigator.popAndPushNamed(context, "/bd_vehicles");},
                          ),
                        ],),
                    ],
                    )
                  ),
                  Container(
                  margin: EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width,
                  height: 180,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Row(
                    children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      width: 130,
                      child: Column(children: [
                        Text('Prossima Tappa?', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
                        Text('Guarda le città che ti consigliamo di vedere per il tuo prossimo viaggio')
                      ]),),
                      Container(child: Image.asset('assets/images/02.png'),)
                    ],)
                  ),
                
                Expanded(child: Container()),
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: FixedNavBar()
            )
          ],
        ),
      ),
    );
  }
}
