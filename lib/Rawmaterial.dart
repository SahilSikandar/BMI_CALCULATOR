import 'package:flutter/material.dart';
import 'package:bmi/InputPage.dart';
import 'package:bmi/ReusableCard.dart';
import 'package:bmi/main.dart';
import 'package:bmi/IconData.dart';
import 'package:bmi/constraints.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Raw extends StatelessWidget {

  final IconData icon;
  final Function onPressed;
  Raw({this.icon,this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(onPressed:onPressed,
      constraints: BoxConstraints.tightFor(
        height: 56,
        width: 56
      ),
      child:Icon(icon),
       elevation: 6.0,
       shape: CircleBorder(),
        fillColor: inactivecardcolor,

    );
  }
}
