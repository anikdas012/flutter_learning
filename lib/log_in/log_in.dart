import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LogInUsernameWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Theme(
        data: new ThemeData(
          // primarySwatch: Colors.orange,
        ),
        child: TextFormField(
          decoration: InputDecoration(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.orange,
              ),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.orange,
              ),
            ),
            labelText: "Email",
            labelStyle: TextStyle(
              color: Colors.orange[700],
            ),
            contentPadding: EdgeInsets.zero,
          ),
          cursorColor: Colors.orange,
          cursorHeight: 20.0,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
    );
  }
}

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