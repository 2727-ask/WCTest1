import 'package:flutter/material.dart';
import 'package:task1/constants.dart';
import 'package:task1/screens/all_oportunities.dart';

class MyDemo extends StatelessWidget {
  

  const MyDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 2, // length of tabs
      initialIndex: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const TabBar(
            labelColor: Constants.darkColour,
            indicatorColor: Constants.goldenColor,
            unselectedLabelColor: Constants.greyColor,
            tabs: [
              Tab(text: 'All Opportunities'),
              Tab(text: 'Applied Opportunities'),
            ],
          ),
          Container(
            height: height*0.7, //height of TabBarView
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(color: Constants.greyColor, width: 0.5),
              ),
            ),
            child: const TabBarView(
              children: <Widget>[
                AllOpportunities(),
                Center(
                  child: Text(
                    'Applied Opportunities',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
