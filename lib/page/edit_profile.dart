import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:badges/badges.dart';
import 'package:daily_vegan/screens/user_info_screen.dart';

class EditProfile extends StatefulWidget {
  // late TextEditingController _controller;

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  static get user => null;

  @override
  void initState() {
    super.initState();
  }

  late final List<bool> isSelected = <bool>[false, false, false];

  var userInfo = UserInfoScreen(user: user);

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Center(
                child: Container(
                    child: CircleAvatar(
                      radius: 80,
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.white,
                    ),
                    width: 150.0,
                    height: 150.0,
                    padding: const EdgeInsets.all(1.0), // borde width
                    decoration: new BoxDecoration(
                      color: Colors.black, // border color
                      shape: BoxShape.circle,
                    )),
              ),
              SizedBox(height: 50),
              Container(
                child: Text('닉네임',
                    style: TextStyle(
                        fontFamily: 'NotoSerifKR',
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontSize: 20)),
              ),
              Container(
                width: 250.0,
                child: TextField(
                  // controller: _controller,
                  onSubmitted: (String value) async {
                    await showDialog<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Thanks!'),
                          content: Text(
                              'You typed "$value", which has length ${value.characters.length}.'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
              SizedBox(height: 50),
              Container(
                child: Text('채식 유형',
                    style: TextStyle(
                        fontFamily: 'NotoSerifKR',
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontSize: 20)),
              ),
              SizedBox(height: 10),
              ToggleButtons(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: Text('플렉시',
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'NotoSerifKR',
                              fontWeight: FontWeight.w400,
                              color: Colors.black))),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: Text('폴로',
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'NotoSerifKR',
                              fontWeight: FontWeight.w400,
                              color: Colors.black))),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: Text('페스코',
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'NotoSerifKR',
                              fontWeight: FontWeight.w400,
                              color: Colors.black))),
                ],
                onPressed: (int index) {
                  setState(() {
                    // for (int buttonIndex = 0;
                    //     buttonIndex < isSelected.length;
                    //     buttonIndex++) {
                    //   if (buttonIndex == index) {
                    //     isSelected[buttonIndex] = true;
                    //   } else {
                    //     isSelected[buttonIndex] = false;
                    //   }
                    // }
                    isSelected[index] = !isSelected[index];
                  });
                },
                isSelected: isSelected,
              ),
              ToggleButtons(
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.0),
                        child: Text('락토오보',
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'NotoSerifKR',
                                fontWeight: FontWeight.w400,
                                color: Colors.black))),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.0),
                        child: Text('오보',
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'NotoSerifKR',
                                fontWeight: FontWeight.w400,
                                color: Colors.black))),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.0),
                        child: Text('락토',
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'NotoSerifKR',
                                fontWeight: FontWeight.w400,
                                color: Colors.black))),
                  ],
                  onPressed: (int index) {
                    setState(() {
                      isSelected[index] = !isSelected[index];
                    });
                  },
                  isSelected: isSelected),
              // ToggleButtons(
              //     children: <Widget>[
              //       Padding(
              //           padding: EdgeInsets.symmetric(horizontal: 5.0),
              //           child: Text('비건'))
              //     ],
              //     onPressed: (int index) {
              //       setState(() {
              //         isSelected[index] = !isSelected[index];
              //       });
              //     },
              //     isSelected: isSelected),
              SizedBox(height: 20),
              Container(
                child: Text('이메일',
                    style: TextStyle(
                        fontFamily: 'NotoSerifKR',
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontSize: 20)),
              ),
              SizedBox(height: 10),
              Text('avocado@gmail.com',
                  style: TextStyle(
                      fontFamily: 'NotoSerifKR',
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontSize: 15)),
              SizedBox(height: 50),
              Container(
                child: Text('수정하기',
                    style: TextStyle(
                        fontFamily: 'NotoSerifKR',
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontSize: 30)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
