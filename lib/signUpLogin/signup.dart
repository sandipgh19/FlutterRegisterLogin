import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:registerLogin/localization.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppLocalizations appLocalization = AppLocalizations.of(context);
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
                    hintText: appLocalization.getText("user_name")),
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
                  hintText: appLocalization.getText("phone_number"),
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
                    hintText: appLocalization.getText("email")),
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
                    hintText: appLocalization.getText("password")),
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
                    hintText: appLocalization.getText("confirm_password")),
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
                    appLocalization.getText("sign_up"),
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )),
            ),
            new Container(
                alignment: Alignment.center,
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                        text: appLocalization.getText("already_have_account") + ' ',
                        style: TextStyle(color: Colors.black87, fontSize: 16),
                      ),
                      TextSpan(
                        text: appLocalization.getText("click_here"),
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
