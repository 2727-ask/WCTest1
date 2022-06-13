import 'package:flutter/material.dart';

class ExperienceEdCard extends StatelessWidget {
  final String? title;
  final String? location;
  final String? year;
  final IconData? icon;
  const ExperienceEdCard(
      {Key? key, this.title, this.location, this.year, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Card(
      elevation: 0,
      child: SizedBox(
        width: width,
        height: width * 0.14,
        child: Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: width * 0.2,
                padding: const EdgeInsets.all(8),
                child: CircleAvatar(
                  backgroundColor: Colors.orange[200],
                  radius: 15,
                  child: Icon(
                    icon!,
                    size: 13,
                    color: Colors.black38,
                  ),
                ),
              ),
              SizedBox(
                width: width * 0.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title!,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: width * 0.035,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          width: width * 0.3,
                          margin: const EdgeInsets.only(top: 1),
                          child: Text(
                            location!,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: width * 0.023,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.2,
                          child: Text(
                            year!,
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: width * 0.025,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
