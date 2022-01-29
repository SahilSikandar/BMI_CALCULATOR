
import 'package:bmi/IconData.dart';
import 'package:flutter/material.dart';
import 'package:bmi/InputPage.dart';
class Resublewidget extends StatelessWidget {
  final Color color;
  final Widget Cardicon;
  final Function onpress;
  Resublewidget({this.color,this.Cardicon,this.onpress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: Cardicon,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: color,
        ),


      ),
    );
  }
}
