import 'package:flutter/material.dart';

import '../constants/colors.dart';

class SideLogo extends StatelessWidget {
  const SideLogo({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: onTap, child: Text('M.Rx', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, decoration: TextDecoration.underline, color: CustomColor.yellowSecondary)));
  }
}
