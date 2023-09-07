import 'package:flutter/material.dart';
import 'package:new_buddy/COLORS_MORE.dart';
import 'package:new_buddy/widgets/form/bd_form_review.dart';
import 'package:new_buddy/widgets/form/bd_form_user_personal_data.dart';

class AddReview extends StatelessWidget {
  const AddReview({super.key});

  @override
  Widget build(BuildContext context) {
    double VW = MediaQuery.of(context).size.width;
    double VH = MediaQuery.of(context).size.height;

    return Material(
      child: Stack(
        children: [
          Container(
            child: Container(
              color: COLOR_SOFT_BLACK,
              width: MediaQuery.of(context).size.width,
              child: Column(children: [
                Container(
                    color: COLOR_SOFT_BLACK,
                    padding: EdgeInsets.all(6),
                    child: FormReview()),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
