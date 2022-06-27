import 'package:flutter/material.dart';
import 'package:task1/common_widgets/login_with_google.dart';
import 'package:task1/common_widgets/wiscircle_appbar.dart';
import 'screens/tell_us_more_about_you.dart';
import 'screens/wiscircle_opportunity_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return  Scaffold(
      body: Container(margin:EdgeInsets.only(top: height*0.05), child:LoginWithGoogle()),
    );
  }
}
