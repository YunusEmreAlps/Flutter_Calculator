// Libraries
import 'constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:calculator/calFunc.dart';
import 'package:calculator/widgets/button.dart';

void main() => runApp(MyApp());

// MyApp Function
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Portrait Mode
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(
        child: Scaffold(
          body: Calculator(),
        ),
      ),
    );
  }
}

// Calculator Screen (Parent)
class Calculator extends StatefulWidget {
  // Constructor
  const Calculator({
    Key key,
  }) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

// Calculator Screen (Child)
class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    // Screen
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  displayInputs == null ? "" : "$displayInputs",
                  style: typeTextStyle,
                ),
                Align(
                  child: Text(
                    result == null ? "" : "$result",
                    style: kResultTextStyle,
                  ),
                ),
              ],
            ),
          ),
        ),
        // Buttons (Clear, Parenthesis, Mod, Division)
        Row(
          children: <Widget>[
            // All Clear
            CalculatorButton(
              text: "AC",
              backgroundColor: kPrimaryColor.withOpacity(0.8),
              textColor: Colors.white,
              press: () {
                setState(() {
                  calculation("AC");
                });
              },
            ),
            // Modulo
            CalculatorButton(
              text: "Mod",
              backgroundColor: kSurfaceDarkColor.withOpacity(0.8),
              textColor: Colors.white,
              press: () {
                setState(() {
                  calculation("Mod");
                });
              },
            ),
            // %
            CalculatorButton(
              text: "%",
              backgroundColor: kSurfaceDarkColor.withOpacity(0.8),
              textColor: Colors.white,
              press: () {
                setState(() {
                  calculation("%");
                });
              },
            ),
            // Division
            CalculatorButton(
              text: "÷",
              backgroundColor: kSurfaceDarkColor.withOpacity(0.8),
              textColor: Colors.white,
              press: () {
                setState(() {
                  calculation("÷");
                });
              },
            ),
          ],
        ),
        // Buttons (Numbers, Multiplication)
        Row(
          children: <Widget>[
            // 7
            CalculatorButton(
              text: "7",
              textColor: kSurfaceDarkColor.withOpacity(0.8),
              press: () {
                setState(() {
                  calculation("7");
                });
              },
            ),
            // 8
            CalculatorButton(
              text: "8",
              textColor: kSurfaceDarkColor.withOpacity(0.8),
              press: () {
                setState(() {
                  calculation("8");
                });
              },
            ),
            // 9
            CalculatorButton(
              text: "9",
              textColor: kSurfaceDarkColor.withOpacity(0.8),
              press: () {
                setState(() {
                  calculation("9");
                });
              },
            ),
            // x
            CalculatorButton(
              text: "x",
              backgroundColor: kSurfaceDarkColor.withOpacity(0.8),
              textColor: Colors.white,
              press: () {
                setState(() {
                  calculation("x");
                });
              },
            ),
          ],
        ),
        // Buttons (Numbers, Subtraction)
        Row(
          children: <Widget>[
            // 4
            CalculatorButton(
              text: "4",
              textColor: kSurfaceDarkColor.withOpacity(0.8),
              press: () {
                setState(() {
                  calculation("4");
                });
              },
            ),
            // 5
            CalculatorButton(
              text: "5",
              textColor: kSurfaceDarkColor.withOpacity(0.8),
              press: () {
                setState(() {
                  calculation("5");
                });
              },
            ),
            // 6
            CalculatorButton(
              text: "6",
              textColor: kSurfaceDarkColor.withOpacity(0.8),
              press: () {
                setState(() {
                  calculation("6");
                });
              },
            ),
            // -
            CalculatorButton(
              text: "-",
              backgroundColor: kSurfaceDarkColor.withOpacity(0.8),
              textColor: Colors.white,
              press: () {
                setState(() {
                  calculation("-");
                });
              },
            ),
          ],
        ),
        // Buttons (Numbers, Addition)
        Row(
          children: <Widget>[
            // 1
            CalculatorButton(
              text: "1",
              textColor: kSurfaceDarkColor.withOpacity(0.8),
              press: () {
                setState(() {
                  calculation("1");
                });
              },
            ),
            // 2
            CalculatorButton(
              text: "2",
              textColor: kSurfaceDarkColor.withOpacity(0.8),
              press: () {
                setState(() {
                  calculation("2");
                });
              },
            ),
            // 3
            CalculatorButton(
              text: "3",
              textColor: kSurfaceDarkColor.withOpacity(0.8),
              press: () {
                setState(() {
                  calculation("3");
                });
              },
            ),
            // +
            CalculatorButton(
              text: "+",
              backgroundColor: kSurfaceDarkColor.withOpacity(0.8),
              textColor: Colors.white,
              press: () {
                setState(() {
                  calculation("+");
                });
              },
            ),
          ],
        ),
        // Buttons (Numbers, Addition)
        Row(
          children: <Widget>[
            CalculatorButton(
              text: "",
              textColor: kSurfaceDarkColor.withOpacity(0.8),
              press: () {
                setState(() {
                  calculation("");
                });
              },
            ),
            // 0
            CalculatorButton(
              text: "0",
              textColor: kSurfaceDarkColor.withOpacity(0.8),
              press: () {
                setState(() {
                  calculation("0");
                });
              },
            ),
            // .
            CalculatorButton(
              text: ".",
              textColor: kSurfaceDarkColor.withOpacity(0.8),
              press: () {
                setState(() {
                  calculation(".");
                });
              },
            ),
            // =
            CalculatorButton(
              text: "=",
              backgroundColor: kPrimaryColor.withOpacity(0.8),
              textColor: Colors.white,
              press: () {
                setState(() {
                  calculation("=");
                });
              },
            ),
          ],
        ),


      ],
    );
  }
}
