import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reuseable_card.dart';

const blockColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);
const inactive = Color(0xFF111328);
enum Gender{
  male,
  female,
  nulle
}


class BMIBody extends StatefulWidget {
  const BMIBody({super.key});

  @override
  State<BMIBody> createState() => _BMIBodyState();
}

class _BMIBodyState extends State<BMIBody> {
   Gender selectedGender=Gender.nulle;
  // Color maleCardColor = inactive;
  // Color femaleCardColor = inactive;
  //
  // void updateColor(Gender gender) {
  //   if(gender==Gender.male){
  //     if(maleCardColor==inactive){
  //       maleCardColor=blockColor;
  //       femaleCardColor=inactive;
  //     }else{
  //       maleCardColor=inactive;
  //
  //     }
  //   }else {
  //     if(femaleCardColor==inactive){
  //      femaleCardColor=blockColor;
  //      maleCardColor=inactive;
  //     }else{
  //       femaleCardColor=inactive;
  //     }
  //   }
  int height=180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
          foregroundColor: Colors.white,
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(children: <Widget>[
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: (){
                     setState(() {
                       selectedGender=Gender.male;
                     });
                    },
                    child: ReusableCard(
                      colour: selectedGender==Gender.male?blockColor:inactive,
                      cardChild: IconContent(
                          iconCard: FontAwesomeIcons.mars, label: 'MALE'),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                       selectedGender=Gender.female;
                      });
                    },
                    child: ReusableCard(
                      colour: selectedGender==Gender.female?blockColor:inactive,
                      cardChild: IconContent(
                        iconCard: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                )
              ]),
            ),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(child: ReusableCard(colour: blockColor,cardChild:
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('HEIGHT',style:
                        textStyle,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(height.toString(),
                          style:
                            TextStyle(
                              fontWeight: FontWeight.bold,
                                  fontSize: 50.0,
                            ),),
                          Text('cm',style:
                            textStyle,)
                        ],
                      ),
                      Slider(value: height.toDouble() ,min: 120,max:220 ,onChanged: (double newValue){
                        setState(() {
                          height=newValue.round();
                        });

                      },
                      inactiveColor: inactive,
                      activeColor: bottomContainerColor,)
                    ],
                  ),))
              ],
            )),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(flex: 1, child: ReusableCard(colour: blockColor)),
                  Expanded(flex: 1, child: ReusableCard(colour: blockColor)),
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 80.0,
            )
          ],
        ));
  }
}

