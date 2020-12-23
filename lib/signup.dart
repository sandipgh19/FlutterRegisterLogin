import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: <Widget>[
            new Container(
              margin: const EdgeInsets.all(20),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                            const Radius.circular(18.0))),
                    filled: true,
                    hintText: "User name"),
              ),
            ),
            new Container(
              margin: const EdgeInsets.all(20),
              child: TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  border: new OutlineInputBorder(
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(18.0))),
                  filled: true,
                  hintText: "Phone number",
                ),
              ),
            ),
            new Container(
              margin: const EdgeInsets.all(20),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                            const Radius.circular(18.0))),
                    filled: true,
                    hintText: "Email"),
              ),
            ),
            new Container(
              margin: const EdgeInsets.all(20),
              child: TextField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                            const Radius.circular(18.0))),
                    filled: true,
                    hintText: "Password"),
              ),
            ),
            new Container(
              margin: const EdgeInsets.all(20),
              child: TextField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                            const Radius.circular(18.0))),
                    filled: true,
                    hintText: "Confirm password"),
              ),
            ),
            new Container(
              margin: const EdgeInsets.all(20),
              child: new MaterialButton(
                  minWidth: double.infinity,
                  height: 48,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  color: Colors.orange,
                  onPressed: () {},
                  child: Text(
                    'Sign up',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )),
            ),
            new Container(
                alignment: Alignment.center,
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                        text: "Already have Account ",
                        style: TextStyle(color: Colors.black87, fontSize: 16),
                      ),
                      TextSpan(
                        text: "Click here",
                        style: TextStyle(
                            color: Colors.orange,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            _navigateToLoginScreen(context);
                          },
                      )
                    ]))),
          ],
        ),
      ),
    );
  }

  void _navigateToLoginScreen(BuildContext context) {
    Navigator.pop(context);
  }
}
