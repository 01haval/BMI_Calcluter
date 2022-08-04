import 'package:flutter/material.dart';

class  MyFloatingBottn extends StatelessWidget {
  MyFloatingBottn({required this.icon,required this.onPreased});

  final IconData icon;
  final VoidCallback onPreased;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPreased,
      shape: CircleBorder(),
      child: Icon(icon),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
    );
  }
}