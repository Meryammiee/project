import 'package:expense_trackers/Widget/main_button.dart';
import 'package:expense_trackers/core/space.dart';
import 'package:expense_trackers/core/text_style.dart';
import 'package:expense_trackers/data/demo.dart';
import 'package:flutter/material.dart';

import '../core/colors.dart';
import 'login_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor:white,
      body: Stack(
        children: [
          Container(
            height: height,
            color: Colors.white,
            child: Image.asset(
              'assets/Image/Splash.png',
              height: height,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: height / 2,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: gradient,
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'Money',
                        style: headline,
                      ),
                      TextSpan(
                        text: 'Expense',
                        style: headlineDot,
                      ),
                    ]),
                  ),
                  SpaceVH(height: 18.0),
                  Text(
                    splashText,
                    textAlign: TextAlign.center,
                    style: headline2,
                  ),
                  Mainbutton(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (builder) => LoginPage()));
                    },
                    btnColor: blueButton,
                    text: 'Get Started',
                  ),
                  SizedBox(height: 50,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}