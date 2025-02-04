import 'package:flutter/material.dart';
import 'reuseable_card.dart';

const bottomContainerColor = Color(0xFFEB1555);
const blockColor = Color(0xFF1D1E33);

class ResultPage extends StatelessWidget {

  ResultPage({@required this.bmi, @required this.result, @required this.interpretation});

  final String? bmi;
  final String? result;
  final String? interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Your Result',
                style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: blockColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Center(
                    child: Text(
                      result!,
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF24D876),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      bmi!,
                      style: TextStyle(
                        fontSize: 100.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        interpretation!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 22.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 80.0,
              child: Center(
                child: Text(
                  'RECALCULATE BMI',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26.0),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
