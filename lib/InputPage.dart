import 'package:bmi/Rawmaterial.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi/IconData.dart';
import 'package:bmi/ReusableCard.dart';
import 'package:bmi/constraints.dart';
import 'package:bmi/Rawmaterial.dart';
import 'package:bmi/newfile.dart';
import 'package:bmi/calculate.dart';
const color3=Color(0xFF8D8E98);
const icon1=FontAwesomeIcons.mars;
const icon2=FontAwesomeIcons.venus;
const iconm=FontAwesomeIcons.minus;
const iconp=FontAwesomeIcons.plus;
const label1='MALE';
const label2='FEMALE';
const label3='CALCULATE';
const label4='RE-CALCULATE';
enum Gender{
  Male,
  Female
}
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height=0;
  int weight=0;
  int age=0;
  Gender selectedgender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Row(
            children: [
              Expanded(child: Resublewidget(
                onpress:(){
                  setState(() {
                    selectedgender=Gender.Male;
                  });
                },
                color:selectedgender==Gender.Male ? color1:inactivecardcolor,
                Cardicon: reusedicon(icon:icon1,label: label1),
              ),
              ),
              Expanded(child: Resublewidget(
                onpress: (){
                  setState(() {
                    selectedgender=Gender.Female;
                  });
                },
                color:selectedgender==Gender.Female?color1:inactivecardcolor,
                Cardicon: reusedicon(icon:icon2,label: label2),
              ),
              ),
            ],
          ),
          ),
          Expanded(child:Resublewidget(color:color1,
            Cardicon:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("HEIGHT",style: labelTextStyle,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(height.toString(),
                      style: LableNumberText,
                    ),
                    Text('cm',style:labelTextStyle),
                  ],
                ),
                  SliderTheme(
                      data:SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Colors.white ,
                          activeTrackColor: color2,
                          thumbColor: Color(0xFFEB1555),
                          overlayColor:Color(0x1FEB1555),
                          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0)
                          ),
                    child: Slider(value: height.toDouble(), onChanged: (double newValue){
                      setState(() {
                        height=newValue.round();
                      });
                    },
                      min: 0.0,
                      max: 220.0,
                    ),
                  ),

              ],
            ),

          ),
          ),
          Expanded(child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Resublewidget(color:color1,
                Cardicon: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Weight',style: labelTextStyle,),
                    Text(weight.toString(),style:LableNumberText),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Raw(
                            icon:iconm,
                            onPressed:(){
                                 setState(() {
                                    weight--;
                                 });
                     }
                        ),

                        Raw(
                            icon:iconp,
                                onPressed:(){
                                setState(() {
                                  weight++;
                                });
                    }
                        )
                      ],
                    )
                  ],
                ),

              ),
              ),
              Expanded(child: Resublewidget(color:color1,
                  Cardicon:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Age',style:labelTextStyle),
                      Text(age.toString(),style:LableNumberText),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Raw(icon:iconm,onPressed: (){
                              setState(() {
                                age--;
                              });
                            },),
                            Raw(icon:iconp,onPressed: (){
                              setState(() {
                                age++;
                              });
                            },)
                          ],
                        )
                    ],
                  ),
              ),

              ),
            ],
          ),
          ),
             Button(ontap: (){
              setState(() {
                calculate cal=new calculate(height:height,weight:weight);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>page(
                    bmicalc:cal.caculateBMI(),
                    bmiResult:cal.getResult(),
                    bmiinterp:cal.getInter(),
                )));
              });
             },
             text:label3,
             ),

        ],

      ),

    );

  }
}

class Button extends StatelessWidget {
   final Function ontap;

   Button({this.ontap, this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
       margin: EdgeInsets.only(top: 10),
       padding: EdgeInsets.only(bottom: 25.0),
       height: bottomheight,
       width: double.infinity,
       child: Center(
         child: Text(text,style:TextStyle(
           fontSize: 30.0,
           fontWeight: FontWeight.bold,
         ),
         ),
       ),
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(10.0),
         color:color2,
       ),

              ),
    );
  }
}

