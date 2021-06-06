import 'package:daily_vegan/utils/authentication.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:daily_vegan/res/custom_colors.dart';
import 'package:daily_vegan/widgets/google_sign_in_button.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
              left: 16.0, right: 16.0, bottom: 20.0, top: 50.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(),
              // Expanded(
              //   child: Column(
              //     mainAxisSize: MainAxisSize.min,
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Flexible(
              //         flex: 1,
              //         child: Image.asset(
              //           'assets/firebase_logo.png',
              //           height: 160,
              //         ),
              //       ),
              //       SizedBox(height: 20),
              //       Text(
              //         'FlutterFire',
              //         style: TextStyle(
              //           color: CustomColors.firebaseYellow,
              //           fontSize: 40,
              //         ),
              //       ),
              //       Text(
              //         'Authentication',
              //         style: TextStyle(
              //           color: CustomColors.firebaseOrange,
              //           fontSize: 40,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // initializeFirebase
              FutureBuilder(
                future: Authentication.initializeFirebase(context: context),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Text('Error initializing Firebase');
                  } else if (snapshot.connectionState == ConnectionState.done) {
                    return GoogleSignInButton();
                  }
                  return CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                      CustomColors.firebaseOrange,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
