// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:task1/constants.dart';


import '../common_widgets/form_fields/text_form_field.dart';

class EditPersonalInfo extends StatefulWidget {
  const EditPersonalInfo({Key? key}) : super(key: key);

  @override
  State<EditPersonalInfo> createState() => _EditPersonalInfoState();
}

class _EditPersonalInfoState extends State<EditPersonalInfo> {
  Object? groupValue = 1;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
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
            color: Constants.darkColour,
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(width * 0.07),
        child: Form(
          child: ListView(
            children: [
              MyTextFormField(
                title: "First Name",
              ),
              MyTextFormField(
                title: "Last Name",
              ),
              MyTextFormField(
                title: "Email",
              ),
              MyTextFormField(
                title: "Phone",
              ),
              MyTextFormField(
                title: "Year of Birth",
              ),
              Container(
                margin: EdgeInsets.only(top:width * 0.03),
                child: Text(
                  "Gender",
                  style: TextStyle(
                    color: Constants.secondaryColour,
                    fontFamily: "Poppins",
                    fontSize: width * 0.04,
                  ),
                ),
              ),
              SizedBox(
                width: width,
                child: Wrap(
                  children: [
                    SizedBox(
                        width: width * 0.25,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Radio(
                              value: 1,
                              groupValue: groupValue,
                              onChanged: (value) => setState(() {
                                groupValue = value;
                              }),
                            ),
                            Text(
                              "Male",
                              style: TextStyle(fontSize: width * 0.03),
                            )
                          ],
                        )),
                    SizedBox(
                        width: width * 0.30,
                        child: Row(
                          children: [
                            Radio(
                              value: 2,
                              groupValue: groupValue,
                              onChanged: (value) => setState(() {
                                groupValue = value;
                              }),
                            ),
                            Text("Female",
                                style: TextStyle(fontSize: width * 0.03))
                          ],
                        )),
                    SizedBox(
                        width: width * 0.25,
                        child: Row(
                          children: [
                            Radio(
                              value: 3,
                              groupValue: groupValue,
                              onChanged: (value) => setState(() {
                                groupValue = value;
                              }),
                            ),
                            Text("Other",
                                style: TextStyle(fontSize: width * 0.03))
                          ],
                        )),
                    SizedBox(
                      width: width,
                      child: Row(
                        children: [
                          Radio(
                            value: 4,
                            groupValue: groupValue,
                            onChanged: (value) => setState(() {
                              groupValue = value;
                            }),
                          ),
                          Text("Don't want to disclose",
                              style: TextStyle(fontSize: width * 0.03))
                        ],
                      ),
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
