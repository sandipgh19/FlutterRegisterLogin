import 'package:flutter/material.dart';
import 'package:registerLogin/localization.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppLocalizations appLocalization = AppLocalizations.of(context);
    return Scaffold(
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
          new Container(
            margin: const EdgeInsets.all(20),
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  border: new OutlineInputBorder(
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(18.0))),
                  filled: true,
                  hintText: appLocalization.getText("user_name")),
            ),
          )
        ])));
  }
}
