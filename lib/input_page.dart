import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reuseable_card.dart';

const blockColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);
const inactive = Color(0xFF111328);

class BMIBody extends StatefulWidget {
  const BMIBody({super.key});

  @override
  State<BMIBody> createState() => _BMIBodyState();
}

class _BMIBodyState extends State<BMIBody> {
  Color maleCardColor = inactive;
  Color femaleCardColor = inactive;

  void updateColor(int gender) {
    if(gender==1){
      if(maleCardColor==inactive){
        maleCardColor=blockColor;
        femaleCardColor=inactive;
      }else{
        maleCardColor=inactive;

      }
    }else {
      if(femaleCardColor==inactive){
       femaleCardColor=blockColor;
       maleCardColor=inactive;
      }else{
        femaleCardColor=inactive;
      }
    }
  }

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
                       updateColor(1);
                     });
                    },
                    child: ReusableCard(
                      colour: maleCardColor,
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
                        updateColor(2);
                      });
                    },
                    child: ReusableCard(
                      colour: femaleCardColor,
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
                Expanded(child: ReusableCard(colour: blockColor))
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

