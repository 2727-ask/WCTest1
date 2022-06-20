import 'package:flutter/material.dart';
import 'package:task1/common_widgets/action_button.dart';
import 'package:task1/common_widgets/hero_section.dart';

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
            color:Constants.darkColour,
          ),
        ],
      ),
      body: SizedBox(
        child: ListView(
          children: const [
            HeroSection(),
            UserInfo(
              userName: "Rohan Chopra",
              designation: "Full Stack Developer",
            ),
          ],
        ),
      ),
    );
  }
}
