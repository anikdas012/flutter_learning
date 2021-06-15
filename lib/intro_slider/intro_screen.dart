import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class IntroImage extends StatelessWidget {

  final String _imagePath;

  IntroImage(this._imagePath);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _imagePath,
      alignment: Alignment.bottomCenter,
    );
  }
}