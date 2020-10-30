// Libraries
import 'package:flutter/material.dart';
import 'package:calculator/constants/constants.dart';

// Button
class CalculatorButton extends StatelessWidget {
  const CalculatorButton({
    this.backgroundColor = Colors.transparent,
    this.textColor = kTextColor,
    @required this.text,
    @required this.press,
  });
  final Color backgroundColor;
  final Color textColor;
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(1),
        color: backgroundColor,
        child: FlatButton(
          color: backgroundColor,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
          onPressed: press,
          child: Text(
            "$text",
            style: TextStyle(
              color: textColor,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
