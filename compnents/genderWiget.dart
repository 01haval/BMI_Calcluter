import 'package:flutter/material.dart';
import 'package:bmi_calcluter/constants.dart';

class genderWiget extends StatelessWidget {
  genderWiget({this.icon=Icons.add,this.title=''});
  IconData icon;
  String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          title,
          style: KlibleTextStyle,
        ),
      ],
    );
  }
}