import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent({required this.iconCard, required this.label});

  final IconData iconCard;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(iconCard, size: 80.0),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xFF8D8E98),
          ),
        )
      ],
    );
  }
}