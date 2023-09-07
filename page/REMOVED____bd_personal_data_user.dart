import 'package:new_buddy/widgets/form/bd_form_user_personal_data.dart';
import 'package:flutter/material.dart';

class PersonalDataUser extends StatelessWidget {
  const PersonalDataUser({super.key});

  @override
  Widget build(BuildContext context) {
    double VW = MediaQuery.of(context).size.width;
    double VH = MediaQuery.of(context).size.height;

    return Material(
      child: Stack(
        children: [
          Container(
            height: VH,
            child: Container(
              color: Color.fromARGB(255, 241, 238, 238),
              width: MediaQuery.of(context).size.width,
              child: Column(children: [
                SizedBox.fromSize(
                  size: Size(VW, 60),
                ),
                Container(
                    padding: EdgeInsets.fromLTRB(90, 0, 90, 0),
                    child: FormUserPersonalData()),
              ]),
            ),
          ),
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              )),
        ],
      ),
    );
  }
}
