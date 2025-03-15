import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;

    final screenHeight = screenSize.height;

    return Container(
      height: screenHeight,
      constraints: BoxConstraints(minHeight: 560.0),
      margin: EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 15,
        children: [
          ShaderMask(
              shaderCallback: (bounds) {
                return LinearGradient(colors: [
                  CustomColor.scaffoldBg.withValues(alpha: 0.6),
                  CustomColor.whitePrimary.withValues(alpha: 0.1),
                ]).createShader(bounds);
              },
              blendMode: BlendMode.srcATop,
              child: Image.asset('assets/flutter_avater.png')
          ),

          Text('Hi,\nI\'m Rahat.\nA Flutter Developer', style: TextStyle(
              fontSize: 24.0,
              height: 1.5,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary
          ),),

          SizedBox(width: 190.0, child: ElevatedButton(style: ButtonStyle(backgroundColor: WidgetStateProperty.resolveWith((states) => CustomColor.yellowPrimary)),onPressed: () {}, child: Text('Get in touch',style: TextStyle(color: CustomColor.whitePrimary),))),
        ],
      ),
    );
  }
}
