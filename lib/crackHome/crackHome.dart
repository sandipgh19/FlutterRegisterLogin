import 'package:flutter/material.dart';
import 'package:registerLogin/localization.dart';

AppLocalizations appLocalization;
class CrackHomeDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    appLocalization = AppLocalizations.of(context);
    return CrackHome();
  }
}

class CrackHome extends StatefulWidget {
  CrackHome() : super();

  @override
  _CrackHomeState createState() => _CrackHomeState();
}

class _CrackHomeState extends State<CrackHome> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: appLocalization.getText("home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: appLocalization.getText("my_favorite"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            label: appLocalization.getText("shop_now"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: appLocalization.getText("my_orders"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: appLocalization.getText("account"),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}