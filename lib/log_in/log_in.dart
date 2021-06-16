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

class LogInPasswordWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LogInPasswordState();
  }
}

class LogInPasswordState extends State<LogInPasswordWidget> {
  bool _passwordVisible = false;

  @override
  void initState() {
    super.initState();
    _passwordVisible = true;
  }
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
          labelText: "Password",
          labelStyle: TextStyle(
            color: Colors.orange[700],
          ),
          contentPadding: EdgeInsets.zero,
          suffixIcon: IconButton(
            icon: Icon(
              _passwordVisible ? Icons.visibility : Icons.visibility_off,
              color: Colors.grey,
            ),
            onPressed: () {
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            },
          ),
        ),
        obscureText: _passwordVisible,
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

class LogInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.orange[700],
        textStyle: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: () {},
      child: Text("Log In")
    );
  }
}