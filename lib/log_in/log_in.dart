import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LogInUsernameWidget extends StatelessWidget {
  final TextEditingController _controller;

  LogInUsernameWidget(this._controller);

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
          controller: _controller,
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
  final TextEditingController _controller;

  LogInPasswordWidget(this._controller);

  @override
  State<StatefulWidget> createState() {
    return LogInPasswordState(_controller);
  }
}

class LogInPasswordState extends State<LogInPasswordWidget> {
  bool _passwordVisible = false;
  final TextEditingController _controller;

  LogInPasswordState(this._controller);

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
        controller: _controller,
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
  final TextEditingController _usernameController;
  final TextEditingController _passwordController;

  LogInButton(this._usernameController, this._passwordController);

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
      onPressed: () {
        String data = "username: ";
        data += _usernameController.text;
        data += "\npassword: ";
        data += _passwordController.text;
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(data),
            );
          },
        );
      },
      child: Text("Log In")
    );
  }
}

class ForgotPasswordButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        primary: Colors.white,
        textStyle: TextStyle(
          color: Colors.white,
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: () {},
      child: Text("Forgot Password?")
    );
  }
}