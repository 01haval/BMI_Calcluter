import 'package:flutter/material.dart';
import '../constants.dart';

class BottemCalculate extends StatelessWidget {

  BottemCalculate({required this.text,required this.onTap});

  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            text,
            style: KlargTextContinar,
          ),
        ),
        margin: EdgeInsets.only(top: 10.0),
        color: KBotoomContinairColour,
        width: double.infinity,
        height: KBotoomContinairheight,
      ),
    );
  }
}
