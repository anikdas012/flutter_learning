import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IntroTitle extends StatelessWidget {

  final String _title;

  IntroTitle(this._title);

  @override
  Widget build(BuildContext context) {
    return Text(
      _title,
      textAlign: TextAlign.center,
      softWrap: true,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 18.0,
      ),
    );
  }
}

class IntroRichTitle extends StatelessWidget {

  final String _title;

  IntroRichTitle(this._title);

  @override
  Widget build(BuildContext context) {
    var titles = _title.split('\n');
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: titles[0],
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),
          ),
          TextSpan(
            text: '\n',
          ),
          TextSpan(
            text: 'and',
            style: const TextStyle(
              color: Colors.orange,
              fontSize: 18.0,
              fontStyle: FontStyle.italic,
            ),
          ),
          TextSpan(
            text: titles[1].replaceAll('and', ''),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),
          ),
        ]
      ),
    );
  }
}

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