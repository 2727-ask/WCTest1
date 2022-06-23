import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:task1/screens/opportunity_tabs.dart';
import '../screens/profile_page.dart';

import '../constants.dart';

class WisCircleOpportunityPage extends StatefulWidget {
  const WisCircleOpportunityPage({Key? key}) : super(key: key);

  @override
  State<WisCircleOpportunityPage> createState() =>
      _WisCircleOpportunityPageState();
}

class _WisCircleOpportunityPageState extends State<WisCircleOpportunityPage> {
  @override
  Widget build(BuildContext context) {
    int filterCount = 1;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        margin: EdgeInsets.all(width * 0.04),
        padding: EdgeInsets.all(width * 0.02),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
                    elevation: MaterialStateProperty.all(0),
                  ),
                  icon: Badge(
                    badgeColor: Constants.goldenColor,
                    badgeContent: Text(
                      filterCount.toString(),
                      style: (const TextStyle(
                          color: Constants.darkColour,
                          fontWeight: FontWeight.bold)),
                    ),
                    child: const Icon(
                      Icons.menu,
                      color: Colors.black,
                      size: 24.0,
                    ),
                  ),
                  label: const Text(
                    'All Filters',
                    style: TextStyle(
                      color: Constants.darkColour,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 30,
                  child: VerticalDivider(
                    thickness: 2,
                    width: 3,
                    color: Constants.darkColour,
                  ),
                ),
                ElevatedButton.icon(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
                    elevation: MaterialStateProperty.all(0),
                  ),
                  icon: const Icon(
                    Icons.filter_alt_outlined,
                    color: Colors.black,
                    size: 24.0,
                  ),
                  label: const Text(
                    'Sort',
                    style: TextStyle(
                        color: Constants.darkColour,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            Expanded(
              child: Container(margin:EdgeInsets.only(top:height*0.03),child: const MyDemo()),
            )
          ],
        ),
      ),
    );

    // ElevatedButton(
    //     onPressed: () {
    //       Navigator.of(context).push(
    //         MaterialPageRoute(
    //           builder: ((context) => const ProfilePage()),
    //         ),
    //       );
    //     },
    //     child: const Text("Profile Page"))
  }
}
