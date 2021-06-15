import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {

  final String _title;
  final String _description;
  final String _imagePath;
  final bool _isRichText;

  IntroPage(this._title, this._description, this._imagePath, this._isRichText);

  @override
  Widget build(BuildContext context) {
    Widget titleWidget;
    if (_isRichText) {
      titleWidget = IntroRichTitle(_title);
    } else {
      titleWidget = IntroTitle(_title);
    }
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(31, 11, 56, 1),
                Color.fromRGBO(60, 0, 133, 1)
              ]
            ),
          ),
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 80.0),
                  child: SizedBox(
                    height: 200.0,
                    width: 200.0,
                    child: titleWidget,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 140.0),
                  child: SizedBox(
                    height: 300.0,
                    width: 250.0,
                    child: IntroDescription(_description),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IntroImage(_imagePath),
                ),
              )
            ],
          )
          /*Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: IntroTitle(_title),
                ),
                Align(
                  alignment: Alignment.center,
                  child: IntroDescription(_description),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: IntroImage(_imagePath),
                ),
              ],
          )*/,
        ),
      ),
    );
  }
}

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