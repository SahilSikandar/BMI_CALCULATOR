import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi/IconData.dart';
import 'package:bmi/ReusableCard.dart';
import 'package:bmi/InputPage.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme:ThemeData.dark().copyWith(
        colorScheme: ColorScheme.light(
          primary: Color(0xFF0A0E21),
        ),
        scaffoldBackgroundColor:Color(0xFF0A0E21) ,
      ),
      home: InputPage(),
    );
  }
}





