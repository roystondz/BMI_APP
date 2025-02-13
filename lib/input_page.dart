import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reuseable_card.dart';
import 'result_page.dart';
import 'brain.dart';

const blockColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);
const inactive = Color(0xFF111328);

enum Gender { male, female, nulle }

class BMIBody extends StatefulWidget {
  const BMIBody({super.key});

  @override
  State<BMIBody> createState() => _BMIBodyState();
}

class _BMIBodyState extends State<BMIBody> {
  Gender selectedGender = Gender.nulle;
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
  int height = 180;
  int weight = 60;
  int age = 25;

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
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      colour:
                          selectedGender == Gender.male ? blockColor : inactive,
                      cardChild: IconContent(
                          iconCard: FontAwesomeIcons.mars, label: 'MALE'),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      colour: selectedGender == Gender.female
                          ? blockColor
                          : inactive,
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
                Expanded(
                    child: ReusableCard(
                  colour: blockColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'HEIGHT',
                        style: textStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            height.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 50.0,
                            ),
                          ),
                          Text(
                            'cm',
                            style: textStyle,
                          )
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          thumbColor: Color(0xFFEB1555),
                          activeTrackColor: Colors.white,
                          overlayColor: Color(0x15EB1555),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 13.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 20.0),
                        ),
                        child: Slider(
                          value: height.toDouble(),
                          min: 120,
                          max: 220,
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          },
                          inactiveColor: inactive,
                        ),
                      )
                    ],
                  ),
                ))
              ],
            )),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: ReusableCard(
                        colour: blockColor,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'WEIGHT',
                              style: textStyle,
                            ),
                            Text(
                              weight.toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 50.0,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                // FloatingActionButton(
                                //   onPressed: () {
                                //     setState(() {
                                //       weight--;
                                //     });
                                //   },
                                //   shape: CircleBorder(),
                                //   backgroundColor: Colors.grey,
                                //   child: Icon(
                                //     Icons.add,
                                //     color: Colors.white,
                                //   ),
                                // ),
                                RoundButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 15.0,
                                ),
                                //
                                RoundButton(
                                  icon: FontAwesomeIcons.add,
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: ReusableCard(
                          colour: blockColor,
                          cardChild: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'AGE',
                                style: textStyle,
                              ),
                              Text(
                                age.toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 50.0,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  // FloatingActionButton(
                                  //   onPressed: () {
                                  //     setState(() {
                                  //       age--;
                                  //     });
                                  //   },
                                  //   shape: CircleBorder(),
                                  //   backgroundColor: Colors.grey,
                                  //   child: Icon(
                                  //     Icons.add,
                                  //     color: Colors.white,
                                  //   ),
                                  // ),
                                  RoundButton(
                                    icon: FontAwesomeIcons.minus,
                                    onPressed: () {
                                      setState(() {
                                        age--;
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    width: 15.0,
                                  ),
                                  // FloatingActionButton(
                                  //   onPressed: () {
                                  //     setState(() {
                                  //       age++;
                                  //     });
                                  //   },
                                  //   shape: CircleBorder(),
                                  //   backgroundColor: Colors.grey,
                                  //   child: Icon(
                                  //     FontAwesomeIcons.plus,
                                  //     color: Colors.white,
                                  //   ),
                                  // ),

                                  RoundButton(
                                    icon: FontAwesomeIcons.add,
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                  )
                                ],
                              )
                            ],
                          ))),
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                Brain br = Brain(height: height, weight: weight);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultPage(
                  bmi: br.calculateBMI(),
                  result: br.getResult(),
                  interpretation: br.getInterpretation(),
                )));
              },
              child: Container(

                color: bottomContainerColor,
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: 80.0,
                child: Center(
                    child: Text(
                      'CALCULATE BMI',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26.0),
                    )),
              ),
            )
          ],
        ));
  }
}

class RoundButton extends StatelessWidget {
  RoundButton({required this.icon, required this.onPressed});
  final VoidCallback onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,

      constraints: BoxConstraints(minHeight: 56.0, minWidth: 56.0),
      shape: CircleBorder(),
      fillColor: Colors.grey,
      child: Icon(icon),
    );
  }
}
