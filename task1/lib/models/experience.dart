import 'package:flutter/material.dart';

class Experience {
  final String? title;
  final Icon? icon;
  final String? location;
  final String? year;

  Experience({this.title, this.icon=const Icon(Icons.work), this.location, this.year});
}

class Experiences {
  var expsList = [
    Experience(
      title: "GST Consultant",
      location: "Shree Firm",
      year: "May 2021-Aug 2021",
    ),
    Experience(
      title: "GST Consultant",
      location: "Shree Firm",
      year: "May 2021-Aug 2021",
    ),
    Experience(
      title: "GST Consultant",
      location: "Shree Firm",
      year: "May 2021-Aug 2021",
    ),
    Experience(
      title: "GST Consultant",
      location: "Shree Firm",
      year: "May 2021-Aug 2021",
    ),
    Experience(
      title: "GST Consultant",
      location: "Shree Firm",
      year: "May 2021-Aug 2021",
    ),
  ];
}
