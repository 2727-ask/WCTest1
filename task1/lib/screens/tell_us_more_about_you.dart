import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import '../common_widgets/curve_shape_top.dart';
import '../common_widgets/wis_circle_logo_with_icon.dart';
import '../constants.dart';

class TellUsMoreAboutYou extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final int NotificationCount = 1;
  static const Color color = Color.fromARGB(255, 255, 187, 0);
  const TellUsMoreAboutYou({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(
          height: height * 0.15,
          child: Stack(
            children: [
              SizedBox(
                width: width,
                child: const CurveShapeTop(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(width * 0.03),
                    child: Image(
                      width: width * 0.5,
                      image: Constants.logo,
                    ),
                  ),
                  WisCircleLogoWithIcons(
                      width: width,
                      color: color,
                      NotificationCount: NotificationCount)
                ],
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20),
          child: MultiselectDropdown(),
        )
      ],
    );
  }
}

class MultiselectDropdown extends StatefulWidget {
  bool showLists = false;
  List skills = [];
  int maxSkills = 3;
  List skillsStore = [
    {"title": "Technology", "isSelected": false, "id": 1},
    {"title": "Commerce", "isSelected": false, "id": 2},
    {"title": "GST", "isSelected": false, "id": 3},
    {"title": "HTML", "isSelected": false, "id": 4},
    {"title": "Data Science", "isSelected": false, "id": 5},
    {"title": "Artificial Intelligence", "isSelected": false, "id": 6},
  ];
  MultiselectDropdown({Key? key}) : super(key: key);

  @override
  State<MultiselectDropdown> createState() => _MultiselectDropdownState();
}

class _MultiselectDropdownState extends State<MultiselectDropdown> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(height * 0.02),
          child: const Text(
            "Please tell us more about you.",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          width: width * 0.9,
          margin: EdgeInsets.only(bottom: height * 0.01),
          child: Text(
            "Your Domain of Interest",
            style: TextStyle(
                fontWeight: FontWeight.normal,
                color: Constants.greyColor,
                fontSize: height * 0.02),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.black,
            ),
          ),
          width: width * 0.9,
          height: height * 0.1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: width * 0.75,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.skills.length,
                  itemBuilder: (BuildContext context, int index) {
                    return WisCircleChip(
                      width: width,
                      title: widget.skills[index]["title"].toString(),
                      deleteChip: () {
                        setState(
                          () {
                            print("Triggered");
                            widget.skillsStore[index]["isSelected"] = false;
                            widget.skills.remove(widget.skillsStore[index]);
                          },
                        );
                      },
                    );
                  },
                ),
              ),
              InkWell(
                onTap: () => {
                  setState(
                    () {
                      widget.showLists = !widget.showLists;
                    },
                  ),
                },
                child: Container(
                  margin: EdgeInsets.only(right: width * 0.02),
                  child: const Icon(Icons.arrow_drop_down_circle_outlined),
                ),
              )
            ],
          ),
        ),
        (widget.showLists == true)
            ? Container(
                margin: EdgeInsets.only(top: height * 0.02),
                width: width * 0.9,
                height: height * 0.35,
                color: Constants.secondaryColourLight,
                child: ListView.builder(
                  itemCount: widget.skillsStore.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CheckboxListTile(
                      value: widget.skillsStore[index]["isSelected"],
                      onChanged: (value) => {
                        setState(
                          () {
                            if (value!) {
                              if (!widget.skills
                                  .contains(widget.skillsStore[index])) {
                                widget.skills.add(
                                  widget.skillsStore[index],
                                );
                                widget.skillsStore[index]["isSelected"] = true;
                              }
                            } else {
                              widget.skills.remove(widget.skillsStore[index]);
                              widget.skillsStore[index]["isSelected"] = false;
                            }
                          },
                        ),
                      },
                      title: Text(widget.skillsStore[index]["title"]),
                      tileColor: Colors.white,
                      controlAffinity: ListTileControlAffinity.leading,
                    );
                  },
                ),
              )
            : SizedBox(
                width: width * 0.9,
                height: height * 0.35,
              ),
        Column(
          children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Constants.darkColour),
              ),
              onPressed: null,
              child: SizedBox(width:width*0.8,child: const Text('Next', style: TextStyle(color: Colors.white,),textAlign: TextAlign.center,)),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Constants.lightColor),
              ),
              onPressed: null,
              child: SizedBox(width:width*0.8,child: const Text('Cancel', style: TextStyle(color: Colors.black,),textAlign: TextAlign.center,)),
            ),
          ],
        )
      ],
    );
  }
}

class WisCircleChip extends StatelessWidget {
  final String? title;
  final void Function()? deleteChip;
  const WisCircleChip({
    Key? key,
    required this.width,
    this.title,
    this.deleteChip,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: deleteChip,
      child: Container(
        margin: EdgeInsets.only(left: width * 0.02),
        child: Chip(
          backgroundColor: Constants.defaultColour,
          label: Text(title!),
          avatar: const Icon(
            Icons.close,
          ),
        ),
      ),
    );
  }
}
