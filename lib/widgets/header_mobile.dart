import 'package:flutter/material.dart';
import 'package:rahat_portfolio/styles/style.dart';
import 'package:rahat_portfolio/widgets/site_logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap});
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      margin: const EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
      decoration: kHeaderDecoration,
      child: Row(
        children: [
          SideLogo(
            onTap: onLogoTap,
          ),
          Spacer(),
          IconButton(onPressed: onMenuTap, icon: Icon(Icons.menu)),
          SizedBox(width: 15.0),
        ],
      ),
    );
  }
}
