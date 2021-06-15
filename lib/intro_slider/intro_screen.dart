import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IntroDescription extends StatelessWidget {

  final String _description;

  IntroDescription(this._description);

  @override
  Widget build(BuildContext context) {
    return Text(
      _description,
      textAlign: TextAlign.center,
      softWrap: true,
      style: const TextStyle(
        color: Colors.grey,
        fontSize: 13.0,
      ),
    );
  }
}

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