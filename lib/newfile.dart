import 'package:bmi/ReusableCard.dart';
import 'package:bmi/constraints.dart';
import 'package:flutter/material.dart';
import 'package:bmi/InputPage.dart';
class page extends StatefulWidget {
  final String bmicalc;

  page({this.bmicalc, this.bmiResult, this.bmiinterp});

  final String bmiResult;
  final String bmiinterp;

  @override
  State<page> createState() => _pageState();
}

class _pageState extends State<page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
        title:Text('BMI CALCULATOR'),
    ),
    body:Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,

    children: [
    Expanded(
    child: Container(
    padding: EdgeInsets.all(15.0),
    alignment: Alignment.bottomLeft,
    child: Text('Your Result',style:Labelresult),
    ),
    ),
    Expanded(
    flex: 5,
    child:Resublewidget(
    color: color1,
    Cardicon:Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    Text(widget.bmiResult.toUpperCase(),style: labelover,),
    Text(widget.bmicalc,style: LableNumberText,),
    Text(widget.bmiinterp,textAlign: TextAlign.center,style:bmi)
    ],

    ),
    ),
    ),
    Button(text: label4,ontap: (){
    setState(() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>InputPage()));
    }
    );
    },
    )
    ],
    ),
    );
  }
}
