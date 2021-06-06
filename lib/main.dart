import 'package:daily_vegan/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:ndialog/ndialog.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: mainPage(),
    );
  }
}

// ignore: camel_case_types
class mainPage extends StatefulWidget {
  @override
  _mainPageState createState() => _mainPageState();
}

// ignore: camel_case_types
class _mainPageState extends State<mainPage> {
  bool _checkbox = false;
  bool _checkboxListTile = false;

  List<PageViewModel> getPages() {
    return [
      PageViewModel(
          title: '''하루하루
기록하는''',
          body: "나만의 채식 일기",
          decoration: const PageDecoration(
              pageColor: Colors.white,
              titleTextStyle: TextStyle(
                  fontFamily: 'NotoSerifKR',
                  fontWeight: FontWeight.w700,
                  fontSize: 46.0),
              bodyTextStyle: TextStyle(
                  fontFamily: 'NotoSerifKR',
                  fontWeight: FontWeight.w700,
                  fontSize: 46.0),
              titlePadding:
                  EdgeInsets.only(top: 300.0, right: 150.0, bottom: 50.0))),
      PageViewModel(
        title: '''목표로 하는
채식 유형을 알려주세요.''',
        bodyWidget: Center(
          child: Column(
            children: [
              CheckboxListTile(
                contentPadding: EdgeInsets.only(left: 100),
                controlAffinity: ListTileControlAffinity.leading,
                title: Text(
                  '플렉시',
                  style: TextStyle(
                      fontFamily: 'NotoSerifKR',
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600),
                ),
                value: _checkboxListTile,
                onChanged: (value) {
                  setState(() {
                    _checkboxListTile = !_checkboxListTile;
                  });
                },
              ),
              CheckboxListTile(
                contentPadding: EdgeInsets.only(left: 100),
                controlAffinity: ListTileControlAffinity.leading,
                title: Text(
                  '폴로',
                  style: TextStyle(
                      fontFamily: 'NotoSerifKR',
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600),
                ),
                value: _checkboxListTile,
                onChanged: (value) {
                  setState(() {
                    _checkboxListTile = !_checkboxListTile;
                  });
                },
              ),
              CheckboxListTile(
                contentPadding: EdgeInsets.only(left: 100),
                controlAffinity: ListTileControlAffinity.leading,
                title: Text(
                  '페스코',
                  style: TextStyle(
                      fontFamily: 'NotoSerifKR',
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600),
                ),
                value: _checkboxListTile,
                onChanged: (value) {
                  setState(() {
                    _checkboxListTile = !_checkboxListTile;
                  });
                },
              ),
              CheckboxListTile(
                contentPadding: EdgeInsets.only(left: 100),
                controlAffinity: ListTileControlAffinity.leading,
                title: Text(
                  '락토오보',
                  style: TextStyle(
                      fontFamily: 'NotoSerifKR',
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600),
                ),
                value: _checkboxListTile,
                onChanged: (value) {
                  setState(() {
                    _checkboxListTile = !_checkboxListTile;
                  });
                },
              ),
              CheckboxListTile(
                contentPadding: EdgeInsets.only(left: 100),
                controlAffinity: ListTileControlAffinity.leading,
                title: Text(
                  '오보',
                  style: TextStyle(
                      fontFamily: 'NotoSerifKR',
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600),
                ),
                value: _checkboxListTile,
                onChanged: (value) {
                  setState(() {
                    _checkboxListTile = !_checkboxListTile;
                  });
                },
              ),
              CheckboxListTile(
                contentPadding: EdgeInsets.only(left: 100),
                controlAffinity: ListTileControlAffinity.leading,
                title: Text(
                  '락토',
                  style: TextStyle(
                      fontFamily: 'NotoSerifKR',
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600),
                ),
                value: _checkboxListTile,
                onChanged: (value) {
                  setState(() {
                    _checkboxListTile = !_checkboxListTile;
                  });
                },
              ),
              CheckboxListTile(
                contentPadding: EdgeInsets.only(left: 100),
                controlAffinity: ListTileControlAffinity.leading,
                title: Text(
                  '플렉시',
                  style: TextStyle(
                      fontFamily: 'NotoSerifKR',
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600),
                ),
                value: _checkboxListTile,
                onChanged: (value) {
                  setState(() {
                    _checkboxListTile = !_checkboxListTile;
                  });
                },
              )
            ],
          ),
        ),
        // bodyWidget: Center(
        //   child: Column(children: [
        //     Row(
        //       children: [
        //         Checkbox(
        //             value: _checkbox,
        //             onChanged: (value) {
        //               setState(() {
        //                 _checkbox = !_checkbox;
        //               });
        //
        //               // Expanded(
        //               //   child: buildCheckbox(),
        //               // Checkbox(
        //               //     value: value,
        //               //     onChanged: (value) {
        //               //       setState(() {
        //               //         this.value = value;
        //               //       });
        //               //     }),
        //               // Text(
        //               //   '플렉시',
        //               //   style: TextStyle(
        //               //       fontFamily: 'NotoSerifKR',
        //               //       fontSize: 20.0,
        //               //       fontWeight: FontWeight.w600),
        //               // ),
        //
        //               CheckboxListTile(
        //                 controlAffinity: ListTileControlAffinity.leading,
        //                 title: Text('helloooo'),
        //                 value: _checkboxListTile,
        //                 onChanged: (value) {
        //                   setState(() {
        //                     _checkboxListTile = !_checkboxListTile;
        //                   });
        //                 },
        //               );
        //             })
        //       ],
        //     )
        //   ]),
        // ),
        // footer '채식유형 자세히'
        // TO DO:Simple Dioalog 추가하기
        footer: Row(
          children: <Widget>[
            IconButton(
                // child: Text('채식 유형 자세히'),
                icon: const Icon(Icons.help_outline),
                onPressed: () {
                  NAlertDialog(
                    title: Text('Test'),
                    content: Text('U'),
                    blur: 2,
                  ).show(context, transitionType: DialogTransitionType.Bubble);
                }),
            Text('채식 유형 자세히',
                style: TextStyle(
                    fontFamily: 'NotoSerifKR',
                    fontWeight: FontWeight.w400,
                    fontSize: 15.0))
          ],
        ),
        // Icon(Icons.help_outline, size: 17.0),
        // Text('채식유형 자세히',
        //     style: TextStyle(
        //         fontFamily: 'NotoSerifKR',
        //         fontWeight: FontWeight.w400,
        //         fontSize: 15.0))
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
                fontFamily: 'NotoSerifKR',
                fontWeight: FontWeight.w700,
                fontSize: 28.0),
            bodyTextStyle:
                TextStyle(fontWeight: FontWeight.w700, fontSize: 40.0),
            footerPadding: EdgeInsets.only(left: 100.0, top: 30.0),
            titlePadding: EdgeInsets.only(top: 80.0, bottom: 25.0)),
      ),
      PageViewModel(
          title: '''어떤 이유로
채식을 결심하게 되었나요?''',
          bodyWidget: Center(
            child: TextFormField(
              decoration: InputDecoration(
                  hintStyle: TextStyle(
                    fontFamily: 'NotoSerifKR',
                    fontWeight: FontWeight.w400,
                    fontSize: 15.0,
                  ),
                  filled: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 70.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  hintText: '환경을 생각하게 되었어요.'),
            ),
          ),
          decoration: const PageDecoration(
              titleTextStyle: TextStyle(
                  fontFamily: 'NotoSerifKR',
                  fontWeight: FontWeight.w700,
                  fontSize: 28.0),
              bodyTextStyle:
                  TextStyle(fontWeight: FontWeight.w700, fontSize: 40.0),
              titlePadding: EdgeInsets.only(top: 80.0, bottom: 150.0),
              descriptionPadding: EdgeInsets.only(left: 20.0, right: 20.0))),
      PageViewModel(
          title: '목표한 채식을 위해',
          body: '알림 설정을 해주세요',
          decoration: const PageDecoration(
              pageColor: Colors.white,
              titleTextStyle: TextStyle(
                  fontFamily: 'NotoSerifKR',
                  fontWeight: FontWeight.w700,
                  fontSize: 28.0),
              bodyTextStyle: TextStyle(
                  fontFamily: 'NotoSerifKR',
                  fontWeight: FontWeight.w700,
                  fontSize: 28.0),
              titlePadding: EdgeInsets.only(top: 80.0, bottom: 25.0))),
      PageViewModel(
          title: '''매일 하지 않아도
괜찮아요.''',
          body: '그냥 기록해보세요.',
          footer: Container(
            width: 300,
            height: 300,
            child: SignInScreen(),
          ),
          decoration: const PageDecoration(
              pageColor: Colors.white,
              titleTextStyle: TextStyle(
                  fontFamily: 'NotoSerifKR',
                  fontWeight: FontWeight.w700,
                  fontSize: 28.0),
              bodyTextStyle: TextStyle(
                  fontFamily: 'NotoSerifKR',
                  fontWeight: FontWeight.w700,
                  fontSize: 28.0),
              titlePadding: EdgeInsets.only(top: 80.0, bottom: 25.0))),
      // PageViewModel(
      //     title: 'hey',
      //     bodyWidget: Center(
      //       child: Column(
      //         children: [SignInScreen()],
      //       ),
      //     )),
    ];
  }

  bool value = false;
  //
  // final checkoptions = [
  //   CheckOption(title: 'hello'),
  //   CheckOption(title: 'hi'),
  //   CheckOption(title: '플렉시'),
  // ];

  // Widget buildCheckbox() => ListTile(
  //       onTap: () {
  //         setState(() {
  //           this.value = !value;
  //         });
  //       },
  //       leading: Checkbox(
  //         value: value,
  //         onChanged: (value) {
  //           setState(() {
  //             this.value = value;
  //           });
  //         },
  //       ),
  //       title: Text(
  //         '플렉시',
  //         style: TextStyle(
  //             fontFamily: 'NotoSerifKR',
  //             fontSize: 20.0,
  //             fontWeight: FontWeight.w600),
  //       ),
  //     );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IntroductionScreen(
            globalBackgroundColor: Colors.white,
            pages: getPages(),
            showNextButton: true,
            isProgress: false,
            next: const Icon(Icons.arrow_forward_ios,
                color: Colors.black, size: 50.0),
            nextFlex: 50,
            done: const Text("Done",
                style: TextStyle(fontWeight: FontWeight.w600)),
            onDone: () {}));
  }
}
