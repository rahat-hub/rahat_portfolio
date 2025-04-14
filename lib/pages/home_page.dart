import 'package:flutter/material.dart';
import 'package:rahat_portfolio/constants/colors.dart';
import 'package:rahat_portfolio/widgets/drawer_mobile.dart';


import '../constants/size.dart';

import '../widgets/header_desktop.dart';
import '../widgets/header_mobile.dart';
import '../widgets/main_desktop.dart';
import '../widgets/main_mobile.dart';
import '../widgets/skills_desktop.dart';
import '../widgets/skills_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    
    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constrains) {
          return Scaffold(
            key: scaffoldKey,
            backgroundColor: CustomColor.scaffoldBg,
            endDrawer: constrains.maxWidth >= kMinDesktopWidth ? null : DrawerMobile(),
            body: ListView(
              scrollDirection: Axis.vertical,
              children: [

                if(constrains.maxWidth >= kMinDesktopWidth)
                  HeaderDesktop()
                else
                HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),

                //main
                if(constrains.maxWidth >= kMinDesktopWidth)
                  MainDesktop()
                else
                  MainMobile(),




                // SKILLS
                Container(
                  width: screenWidth,
                  padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
                  color: CustomColor.bgLight1,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 15.0,
                    children: [
                      //title
                      
                      Text("What I can Do", style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.whitePrimary
                      )),
                      
                      // platform and skills

                      if(constrains.maxWidth >= kMedDesktopWidth)
                        SkillsDesktop()
                      else
                        SkillsMobile(),

                    ],
                  ),
                  
                ),
                // PROJECT
                Container(
                  height: 500.0,
                  width: double.maxFinite,
                  color: Colors.transparent,
                ),
                // CONTACT
                Container(
                  height: 500.0,
                  width: double.maxFinite,
                  color: Colors.blueGrey,
                ),
                // FOOTER
                Container(
                  height: 500.0,
                  width: double.maxFinite,
                  color: Colors.transparent,
                ),
              ],
            )
          );
        }
      ),
    );
  }
}
