import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:intl/intl.dart';

class SampleMain extends StatefulWidget {
  @override
  _SampleMainState createState() => _SampleMainState();
}

class _SampleMainState extends State<SampleMain> {
  static const TextStyle optionStyle = TextStyle(
      fontSize: 20,
      fontFamily: 'NotoSerifKR',
      fontWeight: FontWeight.w700,
      color: Colors.black);

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Text(
            DateFormat("yyyy.MM.dd").format(DateTime.now()),
            style: optionStyle,
          ),
          SizedBox(height: 50.0),
          Row(children: <Widget>[
            TextButton(
                onPressed: () {},
                child: Text('완료',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'NotoSerifKR',
                        fontWeight: FontWeight.w600,
                        color: Colors.black)))
          ]),
          Divider(thickness: 1.0, color: Colors.black),
          SizedBox(height: 20.0),
          Container(
            color: Colors.grey[200],
            padding: EdgeInsets.all(50.0),
            child: Icon(Icons.add_a_photo),
          ),
          Row(children: <Widget>[
            SizedBox(width: 150.0),
            Text('채식인가요?',
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'NotoSerifKR',
                    fontWeight: FontWeight.w600,
                    color: Colors.black)),
            Checkbox(
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                })
          ]),
          SizedBox(height: 40.0),
          Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40.0),
              child: TextField(
                  decoration: InputDecoration(
                      hintText: '제목 또는 음식 이름',
                      hintStyle: TextStyle(
                          fontSize: 14,
                          fontFamily: 'NotoSerifKR',
                          fontWeight: FontWeight.w400,
                          color: Colors.black)))),
          SizedBox(height: 20.0),
          Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40.0),
              child: TextField(
                  decoration: InputDecoration(
                      hintText: '짧은 기록. 레시피를 적어도 좋아요. ',
                      hintStyle: TextStyle(
                          fontSize: 14,
                          fontFamily: 'NotoSerifKR',
                          fontWeight: FontWeight.w400,
                          color: Colors.black))))
        ],
      )),
    );
  }
}
