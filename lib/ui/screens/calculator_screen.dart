import 'package:calculatorapp/core/constants/colors.dart';
import 'package:calculatorapp/ui/custom_widgets/green_button.dart';
import 'package:calculatorapp/ui/custom_widgets/grey_button.dart';
import 'package:calculatorapp/ui/custom_widgets/white_button.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  late String valueText = "";
  late String answerText = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: mainThemeColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [

            //Answer section

            Padding(
              padding: const EdgeInsets.only(top: 180, right: 10),
              child: Text(
                answerText,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            //value section

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  valueText,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                //backspace

                IconButton(
                  icon: Icon(
                    Icons.backspace,
                    color: Colors.red,
                  ),
                  onPressed: () {
                    valueText = valueText.substring(0, valueText.length - 1);
                    setState(() {
                      
                    });
                    print('backspace press');
                  },
                ),
              ],
            ),

            //btn section
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: darkGreyColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: Row(
                  children: [
                    //column 1

                    Expanded(
                      child: Column(
                        children: [
                          WhiteButton(
                            value: 'AC',
                            onPressed: () {
                              print('O pressed');
                            },
                          ),
                          GreyButton(
                              value: '1',
                              onPressed: () {
                                valueText = valueText + '1';
                                setState(() {});
                                print('1 pressed');
                              }),
                          GreyButton(
                              value: '4',
                              onPressed: () {
                                valueText = valueText + '4';
                                setState(() {});
                                print('4 pressed');
                              }),
                          GreyButton(
                              value: '7',
                              onPressed: () {
                                valueText = valueText + '7';
                                setState(() {});
                                print('1 pressed');
                              }),
                          WhiteButton(
                              value: '+|-',
                              onPressed: () {
                                print('4 pressed');
                              }),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                      ),
                    ),
                    //column 2
                    Expanded(
                      child: Column(
                        children: [
                          WhiteButton(
                            value: '%',
                            onPressed: () {
                              print('O pressed');
                            },
                          ),
                          GreyButton(
                              value: '2',
                              onPressed: () {
                                valueText = valueText + '2';
                                setState(() {});
                                print('1 pressed');
                              }),
                          GreyButton(
                              value: '5',
                              onPressed: () {
                                valueText = valueText + '5';
                                setState(() {});
                                print('1 pressed');
                              }),
                          GreyButton(
                              value: '8',
                              onPressed: () {
                                valueText = valueText + '8';
                                setState(() {});
                                print('1 pressed');
                              }),
                          WhiteButton(
                              value: '0',
                              onPressed: () {
                                valueText = valueText + '0';
                                setState(() {});
                                print('1 pressed');
                              }),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                      ),
                    ),
                    //column 3
                    Expanded(
                      child: Column(
                        children: [
                          WhiteButton(
                            value: '÷',
                            onPressed: () {
                              print('O pressed');
                            },
                          ),
                          GreyButton(
                              value: '3',
                              onPressed: () {
                                valueText = valueText + '3';
                                setState(() {});
                                print('1 pressed');
                              }),
                          GreyButton(
                              value: '6',
                              onPressed: () {
                                valueText = valueText + '6';
                                setState(() {});
                                print('1 pressed');
                              }),
                          GreyButton(
                              value: '9',
                              onPressed: () {
                                valueText = valueText + '9';
                                setState(() {});
                                print('1 pressed');
                              }),
                          WhiteButton(
                              value: '.',
                              onPressed: () {
                                print('4 pressed');
                              }),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                      ),
                    ),
                    //column 4
                    Expanded(
                      child: Column(
                        children: [
                          WhiteButton(
                            value: 'x',
                            onPressed: () {
                              print('O pressed');
                            },
                          ),
                          WhiteButton(
                              value: '+',
                              onPressed: () {
                                print('1 pressed');
                              }),
                          WhiteButton(
                              value: '-',
                              onPressed: () {
                                print('2 pressed');
                              }),
                          GreenButton(
                              value: '=',
                              onPressed: () {
                                print('3 pressed');
                              }),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
