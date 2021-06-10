import 'dart:io';

import 'package:daily_vegan/screens/sample_profile.dart';
import 'package:daily_vegan/screens/user_info_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:daily_vegan/screens/sign_in_screen.dart';
import 'package:intl/intl.dart';
import 'package:daily_vegan/screens/sample_cal.dart';
import 'package:daily_vegan/screens/profile_screen.dart';
import 'package:daily_vegan/screens/sample_main.dart';

//
// class MainScreen extends StatefulWidget {

//   @override
//   _MainScreenState createState() => _MainScreenState();
// }
//
// class _MainScreenState extends State<MainScreen> {

class MainScreen extends StatefulWidget {
  // const MainScreen({Key? key}) : super(key: key);
  const MainScreen({Key? key, required User user})
      : _user = user,
        super(key: key);

  final User _user;

  @override
  _MainScreenState createState() => _MainScreenState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MainScreenState extends State<MainScreen> {
  late User _user;
  bool _isSigningOut = false;

  Route _routeToSignInScreen() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => SignInScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(-1.0, 0.0);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  @override
  void initState() {
    _user = widget._user;

    super.initState();
  }

  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
      fontSize: 20,
      fontFamily: 'NotoSerifKR',
      fontWeight: FontWeight.w700,
      color: Colors.black);
  // Datatime 때문에 List 앞에 const 삭제함
  static List<Widget> _widgetOptions = <Widget>[
    Scaffold(body: SampleMain()),
    Text(
      'Index 1',
      style: optionStyle,
    ),
    Scaffold(body: SampleCal()),
    Scaffold(body: SampleProfile())
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // 밑에가 원래 설정임 프로필 페이지 때문에 주석 처리 -> scaffold 사용해서 다시 주석 풀었음.
          child: _widgetOptions.elementAt(_selectedIndex),
          // child: SampleProfile(),
        ),
      ),
      bottomNavigationBar: Container(
          // padding: EdgeInsets.only(left: 2.0),
          decoration: BoxDecoration(
              color: Colors.black, border: Border(top: BorderSide(width: 1.0))),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            // font사이즈는 필요없을 것 같은데
            selectedFontSize: 10,
            // items: const <BottomNavigationBarItem> 에서 Container widget때문에 const 삭제
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Padding(
                      padding: EdgeInsets.zero,
                      child: ImageIcon(
                        AssetImage('assets/component1.png'),
                        size: 70,
                      )),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Padding(
                      padding: EdgeInsets.zero,
                      child: ImageIcon(
                        AssetImage('assets/component2.png'),
                        size: 70,
                      )),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Padding(
                      padding: EdgeInsets.zero,
                      child: ImageIcon(
                        AssetImage('assets/component3.png'),
                        size: 70,
                      )),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Padding(
                      padding: EdgeInsets.zero,
                      child: ImageIcon(
                        AssetImage('assets/component4.png'),
                        size: 70,
                      )),
                  label: 'Home'),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            onTap: _onItemTapped,
          )),
    );
  }
}
