import 'package:flutter/material.dart';
import 'package:registerLogin/crackHome/crackHome.dart';
import 'package:registerLogin/signUpLogin/forgotPassword.dart';
import 'package:registerLogin/localization.dart';
import 'package:registerLogin/signUpLogin/signup.dart';
import 'package:flutter/gestures.dart';

void main() {
  runApp(
   MaterialApp(
      localizationsDelegates: [const AppLocalizationsDelegate()],
      supportedLocales: [const Locale('en', '')],
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage() : super();

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    AppLocalizations appLocalization = AppLocalizations.of(context);
        return Scaffold(
            body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Invoke "debug painting" (press "p" in the console, choose the
            // "Toggle Debug Paint" action from the Flutter Inspector in Android
            // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
            // to see the wireframe for each widget.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          new Container(
                alignment: Alignment.center,
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                        text: appLocalization.getText("user") + ' ',
                        style: TextStyle(color: Colors.orange, fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: appLocalization.getText("login"),
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        
                      )
                    ]))),
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
          ),
          new Container(
            margin: const EdgeInsets.all(20),
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  border: new OutlineInputBorder(
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(18.0))),
                  filled: true,
                  hintText: appLocalization.getText("password")),
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
                onPressed: () {_navigateToCrackHomeScreen(context);},
                child: Text(
                  appLocalization.getText("login"),
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )),
          ),
          new Container(
              alignment: Alignment.center,
              child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(
                      text: appLocalization.getText("dont_have_account") + " ",
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
                          _navigateToSignUpScreen(context);
                        },
                    )
                  ]))),
          new Container(
              margin: const EdgeInsets.all(20),
              child: new GestureDetector(
                  onTap: () {
                    _navigateToForgotPasswordScreen(context);
                  },
                  child: Text(
                    appLocalization.getText("forgot_password"),
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  )))
        ],
      ),
    ));
  }

  void _navigateToSignUpScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => SignUpPage()));
  }

  void _navigateToForgotPasswordScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => ForgotPassword()));
  }

  void _navigateToCrackHomeScreen(BuildContext context) {
    Navigator.of(context)
        .pushAndRemoveUntil(MaterialPageRoute(builder: (context) => CrackHomeDashboard()), ModalRoute.withName("/Home"));
  }
}
