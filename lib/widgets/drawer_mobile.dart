import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/nav_items.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColor.scaffoldBg,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20.0, bottom: 20.0),
              child: IconButton(onPressed: () {
                Navigator.of(context).pop();
              }, icon: Icon(Icons.close)),
            ),
          ),
          for(int i = 0; i < iconsMenu.length; i++)
            ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 30.0),
              leading: Icon(iconsMenu[i]),
              titleTextStyle: TextStyle(
                color: CustomColor.whitePrimary,
                fontWeight: FontWeight.w600,
                fontSize: 16.0,
              ),
              title: Text(navTitles[i]),
              onTap: () {},
            )
        ],
      ),
    );
  }
}
