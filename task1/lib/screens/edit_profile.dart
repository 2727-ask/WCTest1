import 'package:flutter/material.dart';
import 'package:task1/common_widgets/action_button.dart';
import 'package:task1/common_widgets/hero_section.dart';
import 'package:task1/screens/edit_skills.dart';

import '../common_widgets/bottom_navigation_bar.dart';
import '../common_widgets/navigation_icon_card.dart';
import '../common_widgets/user_information.dart';
import '../constants.dart';
import 'edit_personal_info.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Constants.darkColour, //change your color here
        ),
        elevation: 0,
        backgroundColor:Constants.primaryColour,
        centerTitle: true,
        title: const Text(
          'Edit Profile',
          style: TextStyle(color: Constants.darkColour, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () => {},
            icon: const Icon(Icons.settings),
            color: Constants.darkColour,
          ),
        ],
      ),
      body: SizedBox(
        child: ListView(
          children: [
            const HeroSection(),
            const UserInfo(
                userName: "Rohan Chopra", designation: "Full Stack Developer"),
            Container(
              margin: EdgeInsets.only(
                top: width * 0.07,
                left: width * 0.1,
                right: width * 0.1,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ActionButton(
                    onPressed: () => {},
                    avatar: const Icon(Icons.cloud_upload),
                    label: "Upload",
                  ),
                  ActionButton(
                    onPressed: () => {},
                    avatar: const Icon(Icons.camera_alt_outlined),
                    label: "Click a picture",
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: width * 0.06,
                left: width * 0.06,
                right: width * 0.06,
              ),
              child: Text(
                "General Information",
                style: TextStyle(
                    fontSize: width * 0.04, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: width * 0.01),
              child: Column(
                children: [
                  NavigationIconCard(
                    leadingIcon: Icon(Icons.person),
                    title: "Personal Info",
                    onTap: () => {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: ((context) => const EditPersonalInfo()),
                        ),
                      ),
                    },
                  ),
                  NavigationIconCard(
                    leadingIcon: Icon(Icons.contact_page_sharp),
                    title: "Profile Summary",
                    onTap: null,
                  ),
                  NavigationIconCard(
                    leadingIcon: Icon(Icons.pie_chart),
                    title: "Skills",
                    onTap: () => {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: ((context) => const EditSkills()),
                        ),
                      ),
                    },
                  ),
                  NavigationIconCard(
                    leadingIcon: Icon(Icons.work_outline),
                    title: "Work Experience",
                    onTap: null,
                  ),
                  NavigationIconCard(
                    leadingIcon: Icon(Icons.school_outlined),
                    title: "Education",
                    onTap: null,
                  ),
                  NavigationIconCard(
                    leadingIcon: Icon(Icons.explore_outlined),
                    title: "Work Experience",
                    onTap: null,
                  ),
                  NavigationIconCard(
                    leadingIcon: Icon(Icons.logout_outlined),
                    title: "Signout",
                    onTap: null,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
