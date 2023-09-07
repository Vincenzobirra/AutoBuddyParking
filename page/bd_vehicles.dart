import 'package:new_buddy/Global.dart';
import 'package:flutter/material.dart';
import 'package:new_buddy/COLORS_MORE.dart';
import 'package:new_buddy/page/bd_global_keys.dart';
import 'package:new_buddy/utility/addVehicles.dart';
import 'package:new_buddy/utility/getVehicles.dart';
import 'package:new_buddy/utility/disableEntity.dart';
import 'package:new_buddy/widgets/bd_fixed_navBar.dart';
import 'package:new_buddy/widgets/form/bd_formVehicles.dart';
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

class Vehicles extends StatefulWidget {
  const Vehicles({super.key});

  @override
  State<Vehicles> createState() => VehiclesState();
}

class VehiclesState extends State<Vehicles> {
  final _key_form = GlobalKey<FormState>();
  int size = 1;
  String license = '';
  int wheels = 2;
  String vehi = '';
  String model = '';

  void selectedVehicleFn() {
  vehicles.forEach((element) {
     
    if( selectedVehicle == '' ){
      vehi = 'Aggiungi o seleziona un veicolo';
      model = '';
    }

    if( element['id'].toString() == selectedVehicle.toString() ){
      vehi = element['license'];
      model = element['model'] != null ? element['model'] : ' no model ';
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
                  height: MediaQuery.of(context).size.height / 4,
                  decoration: BoxDecoration(
                    color: COLOR_PRIMARY,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        child: GestureDetector(onTap: () => Navigator.pop(context) ,child: CircleAvatar(backgroundColor: COLOR_PRIMARY, child: Icon(Icons.arrow_back, color: Colors.white,),))
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 10, 15, 15),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                  SizedBox(height: 60,),
                                Container(
                                  width: 400,
                                  child: Text(vehi, style: TextStyle( fontSize: 40, color: Color.fromARGB(255, 255, 255, 255)), maxLines: 2,)
                                  ),
                                Text( model, style: TextStyle( fontSize: 15, color: Color.fromARGB(255, 255, 255, 255)), ),
                              ],
                            )
                          ]
                          ),
                      ),
                    ],
                  )
                  ),
                Stack(
                  children: [
                    GestureDetector(
                      child: Container(
                        margin: EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 4,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Container(
                          padding: EdgeInsets.all(15),
                          child: Text('Inserisci un nuovo veicolo', style: TextStyle( fontSize: 40, color: Color.fromARGB(255, 57, 57, 57)), )
                        ),
                        ),
                        onTap: () async {
                          dialogAddVehicle(null);
                          await getVehicles();
                          setState(() {
                          });
                          //Navigator.popAndPushNamed(context, "/bd_form_vehicles");
                        },
                    ),
                    Positioned(
                      right: 5,
                      top: 5,
                      child: Container(child: Icon( Icons.arrow_right_alt_rounded, size: 40, ), ) ,
                      ),
                  ],
                ),
                  Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.2,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 240, 241, 251),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Altri veicoli', style: TextStyle( fontSize: 40, color: Color.fromARGB(255, 57, 57, 57), fontWeight: FontWeight.bold), ),
                      Text('Seleziona il veicolo con cui vuoi sostare', style: TextStyle( fontSize: 18, color: Color.fromARGB(255, 57, 57, 57)), ),
                      SingleChildScrollView(
                        child: Container(
                          width: VW,
                          height: 150,
                          child: ListView.builder(
                            itemCount: vehicles.length,
                            itemBuilder: ( BuildContext context, int index ) {
                              return ListTile(
                                onTap: () {
                                  selectedVehicle = vehicles[index]['id'].toString();
                                  selectedVehicleFn();
                                  preferences!.setString( 'vehicleSelected',selectedVehicle.toString() );
                                  GlobalKeys.DashGlobalKey.currentState!.selectedVehicleFn();
                                  GlobalKeys.DashGlobalKey.currentState!.setState(() {
                                    
                                  });
                                  GlobalKeys.VehiclesHome.currentState!.setState(() {
                                    
                                  });
                                  setState(() {
                                    
                                  });
                                },
                                trailing: Container(
                                  width: 80,
                                  child: Row(
                                    children: [
                                      IconButton( onPressed: () async { 
                                        dialogAddVehicle(vehicles[index]['id'].toString()) ;
                                        },
                                      icon: Icon(Icons.edit)),
                                      IconButton( onPressed: () async { 
                                        showDialog(context: context, builder: (context) => AlertDialog(
                                          title: Text('Elimina veicolo ' + vehicles[index]["license"], textAlign: TextAlign.center, ), 
                                          actions: [ 
                                            TextButton(
                                              onPressed: () async {

                                                if( vehicles[index]['id'].toString() == selectedVehicle ){
                                                  selectedVehicle = '';

                                                  selectedVehicleFn();
                                                };
                                                
                                                await disableEntity( 'gs_vehicle', vehicles[index]['id']);
                                                await getVehicles();
                                                setState(() { });
                                                Navigator.pop(context);
                                            }, child: Text('Elimina')),
                                            TextButton(onPressed: () async {
                                              Navigator.pop(context);
                                            }, child: Text('No')),
                                           ],
                                          ));
                                        },
                                      icon: Icon(Icons.delete)),
                                    ],
                                  ),
                                ),
                                title: Row(
                                  children: [
                                    Text( vehicles[index]['license'], style: TextStyle(fontSize: 20, fontWeight: vehicles[index]['id'].toString() == selectedVehicle.toString() ? FontWeight.bold : FontWeight.normal),),
                                    SizedBox(width: 15,),
                                    Text( vehicles[index]["model"]  != null ? '( ' +  vehicles[index]["model"]  + ' )' : 'no Model', style: TextStyle(fontSize: 11, fontWeight: vehicles[index]['id'].toString() == selectedVehicle.toString() ? FontWeight.bold : FontWeight.normal),),
                                  ],
                                ));
                            }),
                        ),
                      )
                    ],
                  )
                  ),
                
          ],
        ),
      ),
    );
  }
}
