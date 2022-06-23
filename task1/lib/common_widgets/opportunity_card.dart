import 'package:flutter/material.dart';
import 'package:task1/common_widgets/skill_badge.dart';
import 'package:task1/constants.dart';

import 'dot.dart';
import 'wiscircle_avatar.dart';

class OpportunityCard extends StatelessWidget {
  const OpportunityCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(width * 0.035),
      ),
      child: Container(
        padding: EdgeInsets.all(width * 0.04),
        child: Column(
          children: [
            Row(
              children: [
                const WisCircleAvatar(),
                Container(
                  margin: EdgeInsets.only(left: width * 0.04),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Need Accountants",
                        style: TextStyle(
                          fontSize: width * 0.04,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Behance . Remote",
                        style: TextStyle(
                          color: Constants.greyColor,
                          fontSize: width * 0.03,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: width * 0.02),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                style: TextStyle(
                  color: Constants.secondaryColour,
                  fontSize: width * 0.03,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Container(
              width: width,
              margin: EdgeInsets.only(top: width * 0.02),
              child: Wrap(
                children: const [
                  SkillBadge(
                    title: "Accounting",
                    titleColor: Constants.secondaryColour,
                    backgroundColor: Constants.secondaryColourLight,
                  ),
                  SkillBadge(
                    title: "Chartered",
                    titleColor: Constants.secondaryColour,
                    backgroundColor: Constants.secondaryColourLight,
                  ),
                  SkillBadge(
                    title: "GST",
                    titleColor: Constants.secondaryColour,
                    backgroundColor: Constants.secondaryColourLight,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: width * 0.02),
              child: Row(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.watch_rounded,
                        size: width * 0.04,
                        color: Constants.secondaryColour,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: width * 0.02),
                        child: Text(
                          "1 week",
                          style: TextStyle(
                            color: Constants.secondaryColour,
                            fontSize: width * 0.035,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: width * 0.015),
                        child: const Dot(),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: width * 0.02),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_city,
                          size: width * 0.04,
                          color: Constants.secondaryColour,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: width * 0.02),
                          child: Text(
                            "Delhi",
                            style: TextStyle(
                              color: Constants.secondaryColour,
                              fontSize: width * 0.035,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: width * 0.015),
                          child: const Dot(),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: width * 0.02),
                    child: Row(
                      children: [
                        Icon(
                          Icons.currency_rupee_sharp,
                          size: width * 0.04,
                          color: Constants.secondaryColour,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: width * 0.02),
                          child: Text(
                            "20,000",
                            style: TextStyle(
                              color: Constants.secondaryColour,
                              fontSize: width * 0.035,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
