// ignore_for_file: avoid_print, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:task1/constants.dart';

class LoginWithGoogle extends StatefulWidget {
  String? googleSignInidToken = "";
  bool? isLoggedIn;
  LoginWithGoogle({Key? key}) : super(key: key);
  @override
  State<LoginWithGoogle> createState() => _LoginWithGoogleState();
}

class _LoginWithGoogleState extends State<LoginWithGoogle> {
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: ['profile', 'email'],
  );

  @override
  void initState() {
    checkLoginStatus();
    (widget.isLoggedIn == false) ? (_handleSignIn()) : null;
    super.initState();
  }

  Future<void> _handleSignIn() async {
    try {
      GoogleSignInAccount? account = await _googleSignIn.signIn();
      GoogleSignInAuthentication? googleKey = await account?.authentication;
      widget.googleSignInidToken = googleKey!.accessToken;
      checkLoginStatus();
    } catch (error) {
      print("Error Occured");
      print(error);
    }
  }

  Future<void> _handlelogOut() async {
    try {
      await _googleSignIn.signOut();
      checkLoginStatus();
    } catch (error) {
      print("Error Occured");
      print(error);
    }
  }

  void checkLoginStatus() {
    try {
      _googleSignIn.isSignedIn().then(
        (value) {
          setState(() {
            widget.isLoggedIn = value;
            print("Value is $value");
          });
        },
      );
    } catch (error) {
      print("Error Occured");
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return InkWell(
      child: Container(
        width: width * 0.8,
        color: Constants.blueColor,
        child: ListTile(
          leading: const Icon(Icons.android, color: Colors.white,),
          title: Text(
            "Signin With Google",
            style: TextStyle(fontSize: width * 0.040,color: Colors.white),
          ),
        ),
      ),
      onTap: () {
        _handleSignIn();
      },
    );
  }
}
