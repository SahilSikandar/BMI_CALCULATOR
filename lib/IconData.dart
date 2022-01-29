import 'package:bmi/constraints.dart';
import 'package:flutter/material.dart';
import 'package:bmi/main.dart';
import 'package:bmi/InputPage.dart';

class reusedicon extends StatelessWidget {
  final IconData icon;
  final String label;


  //
  reusedicon({ this.icon,this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text('$label',style:labelTextStyle
        ),
      ],
    );
  }
}