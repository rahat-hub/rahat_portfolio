import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      height: screenSize.height / 1.2,
      constraints: BoxConstraints(minHeight: 350.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 15.0,
            children: [
              Text('Hi,\nI\'m Rahat.\nA Flutter Developer', style: TextStyle(
                  fontSize: 30.0,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary
              ),),
              SizedBox(width: 250.0,
                  child: ElevatedButton(
                      style: ButtonStyle(backgroundColor: WidgetStateProperty.resolveWith((states) => CustomColor.yellowPrimary)),
                      onPressed: () {},
                      child: Text('Get in touch', style: TextStyle(color: CustomColor.whitePrimary),))),
            ],
          ),
          Image.asset('assets/flutter_avater.png',width: screenWidth / 2),
        ],
      ),
    );
  }
}
