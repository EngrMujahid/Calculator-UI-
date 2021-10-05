import 'package:calculatorapp/core/constants/colors.dart';
import 'package:flutter/material.dart';

import 'calculator_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2)).then((value) => {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> CalculatorScreen()),)
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: mainThemeColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Rounded Container
              Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Row for icons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add,
                          size: 40,
                        ),
                        Icon(
                          Icons.clear,
                          size: 40,
                        ),
                      ],
                    ),
                    Icon(
                      Icons.add,
                      size: 40,
                    ),
                    Icon(
                      Icons.minimize,
                      size: 40,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // text Widget

              Text(
                'Calculator',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
