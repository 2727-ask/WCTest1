// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

import '../common_widgets/action_button.dart';
import '../common_widgets/card_with_icon.dart';
import '../common_widgets/expertise_card.dart';
import '../common_widgets/information_card.dart';
import '../common_widgets/root_division.dart';
import '../common_widgets/bottom_navigation_bar.dart';
import '../common_widgets/hero_section.dart';
import '../common_widgets/personal_info.dart';
import '../common_widgets/info_header.dart';
import '../common_widgets/skill_badge.dart';

import '../models/experience.dart';
import '../models/education.dart';
import '../models/expertise.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var textColor = Colors.grey;

    List<Experience> experiences = Experiences().expsList;
    List<Education> educationList = Educations().eduList;
    List<Expertise> expertiseList = Expertises().expertises;

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
      body: SizedBox(
        child: ListView(
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
              child: const ActionButton(
                  label: "Edit Profile", avatar: Icon(Icons.edit_note_sharp)),
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
            RootDivision(
              divisionHeader: InfoHeader(
                title: "Summary Profile",
                icon: Icon(Icons.notes, color: textColor),
              ),
              child: InformationCard(
                title: "Expert Front-end developer",
                description:
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ",
                width: width,
              ),
            ),
            RootDivision(
              divisionHeader: InfoHeader(
                title: "Skills",
                icon: Icon(Icons.pie_chart, color: textColor),
              ),
              child: SizedBox(
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
            RootDivision(
              divisionHeader: InfoHeader(
                title: "Language",
                icon: Icon(Icons.language, color: textColor),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: expertiseList
                      .map((elm) => Column(
                            children: [
                              ExpertiseCard(
                                title: elm.title,
                                status: elm.status,
                              ),
                              const Divider()
                            ],
                          ))
                      .toList()),
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
                        children: experiences
                            .map(
                              (elm) => CardWithIcon(
                                title: elm.title,
                                icon: Icons.work,
                                location: elm.location,
                                year: elm.year,
                              ),
                            )
                            .toList()),
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
                        children: educationList
                            .map(
                              (elm) => CardWithIcon(
                                title: elm.title,
                                icon: Icons.school,
                                location: elm.location,
                                year: elm.year,
                              ),
                            )
                            .toList()),
                  )
                ],
              ),
            ),
            RootDivision(
              divisionHeader: InfoHeader(
                title: "QNA",
                icon: Icon(
                  Icons.question_answer,
                  color: textColor,
                ),
              ),
              childMargin: 0.01,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InformationCard(
                    title: "What is my current CTC?",
                    description:
                        "My Current CTC is O.5 Rs, orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                    showDivider: true,
                    width: width,
                  ),
                  InformationCard(
                    title: "What is my current CTC?",
                    description:
                        "My Current CTC is O.5 Rs, orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                    showDivider: true,
                    width: width,
                  ),
                  InformationCard(
                    title: "What is my current CTC?",
                    description:
                        "My Current CTC is O.5 Rs, orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                    showDivider: true,
                    width: width,
                  ),
                  InformationCard(
                    title: "What is my current CTC?",
                    description:
                        "My Current CTC is O.5 Rs, orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                    showDivider: true,
                    width: width,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
