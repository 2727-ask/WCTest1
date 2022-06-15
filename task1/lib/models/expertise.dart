class Expertise {
  final String? title;
  final String? status;
  Expertise({this.title, this.status});
}

class Expertises {
  List<Expertise> expertises = [
    Expertise(title: "English", status: "Expert"),
    Expertise(title: "Marathi", status: "Expert"),
    Expertise(title: "Hindi", status: "Expert"),
    Expertise(title: "Deutch", status: "Average"),
    Expertise(title: "Sanskrit", status: "Average"),
  ];
}
