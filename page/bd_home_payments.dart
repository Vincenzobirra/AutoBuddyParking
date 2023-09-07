import 'package:new_buddy/Global.dart';
import 'package:flutter/material.dart';
import 'package:new_buddy/COLORS_MORE.dart';
import 'package:new_buddy/utility/getVehicles.dart';
import 'package:new_buddy/widgets/form/bd_form_credit_card.dart';
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

class HomePayments extends StatefulWidget {
  const HomePayments({super.key});

  @override
  State<HomePayments> createState() => HomePaymentsState();
}

class HomePaymentsState extends State<HomePayments> {
  final _key_form = GlobalKey<FormState>();
  

  void selectedVehicleFn() {
  vehicles.forEach((element) {
    print(element);
    if(element['id'].toString() == selectedVehicle.toString()){
      setState(() {
        
      });
    }
  });
  print('errore');
  }

  @override
  void initState() {
    
    super.initState();
  }

  Future dialogAddVehicle( String? id ) => showDialog(
    
    context: context, 
    builder: (context) => AlertDialog(
      backgroundColor: Color.fromARGB(255, 240, 241, 251),
      content: FormCreditCard(id: id, key: UniqueKey(),),
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
                  height: MediaQuery.of(context).size.height / 3.5,
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
                                Text(selectedPayment['card_name'].toString(), style: TextStyle( fontSize: 40, color: Color.fromARGB(255, 255, 255, 255)), ),
                                Text( '**** **** **** ' + selectedPayment['card_last_four'].toString(), style: TextStyle( fontSize: 35, color: Color.fromARGB(255, 255, 255, 255)), ),
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
                        height: MediaQuery.of(context).size.height / 5.5,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Container(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Aggiungi nuova carta', style: TextStyle( fontSize: 40, color: Color.fromARGB(255, 57, 57, 57)), ),
                            ],
                          )
                          
                        ),
                        ),
                        onTap: () async {
                          dialogAddVehicle(null);
                          setState(() {
                          });
                        },
                    ),
                    Positioned(
                      right: 8,
                      top: 8,
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
                  height: MediaQuery.of(context).size.height / 2.05,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 240, 241, 251),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Seleziona metodo di pagamento', style: TextStyle( fontSize: 35, color: Color.fromARGB(255, 57, 57, 57), fontWeight: FontWeight.bold), ),
                      SingleChildScrollView(
                        child: Container(
                          width: VW,
                          height: 200,
                          child: ListView.builder(
                            itemCount: payments.length,
                            itemBuilder: ( BuildContext context, int index ) {
                              return ListTile(
                                onTap: () {
                                  selectedPayment = payments[index];
                                   setState(() {
                                  });
                                },
                                trailing: Container(
                                  width: 80,
                                  child: Row(
                                    children: [
                                      IconButton( onPressed: () async { 
                                        dialogAddVehicle( payments[index]['id'].toString() ) ;
                                        },
                                      icon: Icon(Icons.edit)),
                                      IconButton( onPressed: () async { 
                                        showDialog(context: context, builder: (context) => AlertDialog(
                                          title: Text('Elimina carta ' + payments[index]["card_last_four"], textAlign: TextAlign.center, ), 
                                          actions: [ 
                                            TextButton(onPressed: () async {
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
                                    Text( '**** **** **** ' +  payments[index]['card_last_four'], style: TextStyle(fontSize: 20, fontWeight: payments[index] == selectedPayment ? FontWeight.bold : FontWeight.normal),),
                                    Text('  ' + '( ' + payments[index]['card_brand'] + ' ) ' , style: TextStyle(fontSize: 12, fontWeight: payments[index] == selectedPayment ? FontWeight.bold : FontWeight.normal),),
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
