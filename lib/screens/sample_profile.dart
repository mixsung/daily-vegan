import 'package:daily_vegan/page/ask_profile.dart';
import 'package:daily_vegan/page/edit_profile.dart';
import 'package:daily_vegan/page/qna_profile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SampleProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            // Positioned(
            //     child: CircleAvatar(
            //   radius: 80,
            //   backgroundColor: Colors.red,
            //   backgroundImage: NetworkImage(
            //       'https://pds.joins.com/news/component/htmlphoto_mmdata/201707/28/27f2b786-0942-437e-abea-64b0d8be7cbb.jpg'),
            // )),
            new Container(
                child: CircleAvatar(
                  radius: 80,
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  backgroundImage: NetworkImage(
                      'https://www.rd.com/wp-content/uploads/2019/04/avocado-shutterstock_1127284562.jpg'),
                ),
                width: 150.0,
                height: 150.0,
                padding: const EdgeInsets.all(1.0), // borde width
                decoration: new BoxDecoration(
                  color: Colors.black, // border color
                  shape: BoxShape.circle,
                ))
          ],
        ),
        // SizedBox(height: 5),
        ListTile(
          title: Center(
              child: Text('아보카도',
                  style: TextStyle(
                      fontFamily: 'NotoSerifKR',
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontSize: 30))),
          subtitle: Center(
              child: Text(
            '페스코',
            style: TextStyle(
                fontFamily: 'NotoSerifKR',
                fontWeight: FontWeight.w700,
                color: Colors.green,
                fontSize: 20),
          )),
        ),
        SizedBox(height: 10),
        Divider(color: Colors.black, thickness: 0.8),
        ListTile(
            contentPadding: EdgeInsets.fromLTRB(50, 0, 0, 0),
            // onTap: Navigator.push(
            //     context, MaterialPageRoute(builder: (context) => EditProfile())),
            title: Text('내 정보 변경',
                style: TextStyle(
                    fontFamily: 'NotoSerifKR',
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: 18)),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EditProfile()));
            }),
        Divider(color: Colors.black, thickness: 0.8),
        ListTile(
            contentPadding: EdgeInsets.only(left: 50.0),
            title: Text('q&a',
                style: TextStyle(
                    fontFamily: 'NotoSerifKR',
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: 18)),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => QnaProfile()));
            }),
        Divider(color: Colors.black, thickness: 0.8),
        ListTile(
            contentPadding: EdgeInsets.only(left: 50.0),
            title: Text('문의',
                style: TextStyle(
                    fontFamily: 'NotoSerifKR',
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: 18)),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AskProfile()));
            }),
        Divider(color: Colors.black, thickness: 0.8),
        ListTile(
            contentPadding: EdgeInsets.only(left: 50.0),
            title: Text('로그아웃',
                style: TextStyle(
                    fontFamily: 'NotoSerifKR',
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: 18))),
        Divider(color: Colors.black, thickness: 0.8),
      ],
    );
  }
}
