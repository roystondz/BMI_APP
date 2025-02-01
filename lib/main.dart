import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0XFF0A0E21),
          appBarTheme: AppBarTheme(
            color: Color(0XFF0A0E21),
          ),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          scaffoldBackgroundColor: Color(0XFF0A0E21),
          textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.white))
      ),
      home: BMIBody(),
    );
  }
}

