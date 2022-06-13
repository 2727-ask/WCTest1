// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:task1/widgets/DescriptionCard.dart';
import 'package:task1/widgets/ExperienceEdCard.dart';
import 'package:task1/widgets/InfoHeader.dart';
import 'package:task1/widgets/SkillBadge.dart';

import '../widgets/BottomNavigationBar.dart';
import '../widgets/EditProfileButton.dart';
import '../widgets/HeroSection.dart';
import '../widgets/LanguageCont.dart';
import '../widgets/Personalinfo.dart';
import '../widgets/QuestionAnswer.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var textColor = Colors.grey;
    var textColor2 = Colors.blueGrey;

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        elevation: 0,
        backgroundColor: Colors.orange[100],
        centerTitle: true,
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () => {},
            icon: const Icon(Icons.settings),
            color: Colors.black,
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
      body: ListView(
        children: [
          const HeroSection(),
          Container(
            margin: EdgeInsets.only(top: width * 0.1),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: width * 0.03),
                  child: Text(
                    "Rohan Chopra",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: width * 0.05,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: width * 0.02),
                  child: Text(
                    "Sr. UI/UX designer",
                    style: TextStyle(
                      fontSize: width * 0.03,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(width * 0.07),
            child: const EditProfileButton(),
          ),
          Container(
            margin: EdgeInsets.all(width * 0.07),
            child: Column(
              children: [
                InfoHeader(
                  title: "Personal Details",
                  icon: Icon(Icons.person, color: textColor),
                ),
                Container(
                  margin: EdgeInsets.only(top: width * 0.05),
                  padding: EdgeInsets.all(width * 0.02),
                  decoration: BoxDecoration(
                    color: const Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: const [
                      PersonalInfo(
                        title: "Mobile",
                        value: "8766834856",
                      ),
                      PersonalInfo(
                        title: "Email Address",
                        value: "ashutoshkumbhar27@gmail.com",
                      ),
                      PersonalInfo(
                        title: "Gender",
                        value: "Male",
                      ),
                      PersonalInfo(
                        title: "Year of Birth",
                        value: "2001",
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: width * 0.07, right: width * 0.07),
            width: width * 0.8,
            child: Column(
              children: [
                InfoHeader(
                  title: "Summary Profile",
                  icon: Icon(Icons.notes, color: textColor),
                ),
                Container(
                  margin: EdgeInsets.only(top: width * 0.05),
                  padding: EdgeInsets.all(width * 0.05),
                  decoration: BoxDecoration(
                    color: const Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const DescriptionCard(
                    title: "Expert Front-end developer",
                    description:
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ",
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: width * 0.8,
            margin: EdgeInsets.only(
                left: width * 0.07, right: width * 0.07, top: width * 0.05),
            child: Column(
              children: [
                InfoHeader(
                  title: "Skills",
                  icon: Icon(Icons.pie_chart, color: textColor),
                ),
                Container(
                  width: width,
                  margin: EdgeInsets.only(top: width * 0.05),
                  padding: EdgeInsets.all(width * 0.05),
                  decoration: BoxDecoration(
                    color: const Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Flexible(
                    child: Wrap(
                      children: const [
                        SkillBadge(title: "Angular"),
                        SkillBadge(title: "Vue.js"),
                        SkillBadge(title: "React"),
                        SkillBadge(title: "HTML5"),
                        SkillBadge(title: "CSS3"),
                        SkillBadge(title: "Sass"),
                        SkillBadge(title: "Django"),
                        SkillBadge(title: "Spring Boot"),
                        SkillBadge(title: "Node.js "),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: width * 0.8,
            margin: EdgeInsets.only(
                left: width * 0.07, right: width * 0.07, top: width * 0.05),
            child: Column(
              children: [
                InfoHeader(
                  title: "Language",
                  icon: Icon(Icons.language, color: textColor),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: width * 0.05,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(width * 0.05),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      LanguageCont(),
                      Divider(),
                      LanguageCont(),
                      Divider(),
                      LanguageCont(),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            width: width * 0.8,
            margin: EdgeInsets.only(
                left: width * 0.07, right: width * 0.07, top: width * 0.05),
            child: Column(
              children: [
                InfoHeader(
                  title: "Work Experience",
                  icon: Icon(Icons.work, color: textColor),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: width * 0.05,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(width * 0.005),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      ExperienceEdCard(
                        icon: Icons.work,
                        title: "GST Consultant",
                        location: "Shree Firm",
                        year: "May 2021",
                      ),
                      ExperienceEdCard(
                        icon: Icons.work,
                        title: "GST Consultant",
                        location: "Shree Firm",
                        year: "May 2021",
                      ),
                      ExperienceEdCard(
                        icon: Icons.work,
                        title: "GST Consultant",
                        location: "Shree Firm",
                        year: "May 2021",
                      ),
                      ExperienceEdCard(
                        icon: Icons.work,
                        title: "GST Consultant",
                        location: "Shree Firm",
                        year: "May 2021",
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            width: width * 0.8,
            margin: EdgeInsets.only(
                left: width * 0.07, right: width * 0.07, top: width * 0.05),
            child: Column(
              children: [
                InfoHeader(
                  title: "Education Details",
                  icon: Icon(
                    Icons.school_sharp,
                    color: textColor,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: width * 0.05,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(width * 0.005),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      ExperienceEdCard(
                        icon: Icons.school_sharp,
                        title: "Chandigarh University",
                        location: "Shree Firm",
                        year: "May 2021",
                      ),
                      ExperienceEdCard(
                        icon: Icons.school_sharp,
                        title: "Chandigarh University",
                        location: "Shree Firm",
                        year: "May 2021",
                      ),
                      ExperienceEdCard(
                        icon: Icons.school_sharp,
                        title: "Chandigarh University",
                        location: "Shree Firm",
                        year: "May 2021",
                      ),
                      ExperienceEdCard(
                        icon: Icons.school_sharp,
                        title: "Chandigarh University",
                        location: "Shree Firm",
                        year: "May 2021",
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            width: width * 0.8,
            margin: EdgeInsets.only(
                left: width * 0.07, right: width * 0.07, top: width * 0.05),
            child: Column(
              children: [
                InfoHeader(
                  title: "Education Details",
                  icon: Icon(
                    Icons.school_sharp,
                    color: textColor,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: width * 0.05,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(width * 0.005),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      QuestionAnswer(
                        question: "What domain are you intrested in?",
                        answer:
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                      ),
                      QuestionAnswer(
                        question: "What domain are you intrested in?",
                        answer:
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                      ),
                      QuestionAnswer(
                        question: "What domain are you intrested in?",
                        answer:
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
