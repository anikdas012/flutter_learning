import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LogIn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LogInState();
}

class LogInState extends State<LogIn> {

  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    userNameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/sme_splash.png"),
              fit: BoxFit.cover,
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
                    child: LogInImageWidget(),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 250.0),
                  child: SizedBox(
                    height: 300.0,
                    width: 300.0,
                    child: LogInUsernameWidget(userNameController),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 330.0),
                  child: SizedBox(
                    height: 300.0,
                    width: 300.0,
                    child: LogInPasswordWidget(passwordController),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 400.0),
                  child: SizedBox(
                    height: 50.0,
                    width: 300.0,
                    child: LogInButton(userNameController, passwordController),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 445.0),
                  child: Wrap(
                    children: [
                      ForgotPasswordButton(),
                  ]
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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