import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LogInImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/sme_logo.png",
      alignment: Alignment.topCenter,
      height: 120.0,
    );
  }
}