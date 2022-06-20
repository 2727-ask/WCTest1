import 'dart:core';

import 'package:flutter/material.dart';
import '../constants.dart';

class InformationCard extends StatelessWidget {
  final String? title;
  final String? description;
  final double? width;
  final double? height;
  final Color? titleColor;
  final Color? descriptionColor;
  final Color? backgroundColor;
  final double? elevation;
  final EdgeInsetsGeometry? padding;
  final bool? showDivider;
  final double? dividerThickness;

  const InformationCard({
    Key? key,
    this.title,
    this.description,
    this.width = 200,
    this.height = 100,
    this.titleColor = Constants.darkColour,
    this.descriptionColor = Constants.secondaryColour,
    this.backgroundColor = Constants.secondaryColourLight,
    this.elevation = 0,
    this.padding = const EdgeInsets.all(10),
    this.showDivider = false,
    this.dividerThickness = 2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      color: backgroundColor,
      child: Container(
        padding: padding!,
        child: Column(
          children: [
            SizedBox(
              width: width!,
              child: Text(
                title!,
                style: TextStyle(
                  fontSize: width! * 0.045,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: width! * 0.03),
              child: Text(
                description!,
                style: TextStyle(
                  color: descriptionColor!,
                  fontSize: width! * 0.035,
                  height: 1.4,
                ),
              ),
            ),
            (showDivider!)
                ? Divider(
                    thickness: dividerThickness,
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
