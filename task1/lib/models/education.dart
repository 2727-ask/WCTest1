import 'package:flutter/material.dart';

class Education {
  final String? title;
  final Icon? icon;
  final String? location;
  final String? year;

  Education({this.title, this.icon=const Icon(Icons.school), this.location, this.year});
}

class Educations {
  var eduList = [
    Education(
      title: "GST Consultant",
      location: "Shree Firm",
      year: "May 2021-Aug 2021",
    ),
    Education(
      title: "GST Consultant",
      location: "Shree Firm",
      year: "May 2021-Aug 2021",
    ),
    Education(
      title: "GST Consultant",
      location: "Shree Firm",
      year: "May 2021-Aug 2021",
    ),
    Education(
      title: "GST Consultant",
      location: "Shree Firm",
      year: "May 2021-Aug 2021",
    ),
    Education(
      title: "GST Consultant",
      location: "Shree Firm",
      year: "May 2021-Aug 2021",
    ),
  ];
}
