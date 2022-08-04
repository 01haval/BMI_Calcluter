import 'package:flutter/material.dart';
class ReusbleCard extends StatelessWidget {
  ReusbleCard(
      {@required this.colour = Colors.white,
        this.continarwidget = const Text('hi')
      ,required this.onPreas});
  final Color colour;
  final Widget continarwidget;
  final VoidCallback onPreas;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap:  onPreas,
      child: Container(
        child: continarwidget,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}