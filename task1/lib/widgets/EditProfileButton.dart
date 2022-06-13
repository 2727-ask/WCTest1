import 'package:flutter/material.dart';

class EditProfileButton extends StatelessWidget {
  const EditProfileButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return ActionChip(
      side: BorderSide(width: 1, color: Colors.orange.shade100),
      backgroundColor: Colors.white,
      avatar: CircleAvatar(
        backgroundColor: Colors.white,
        child: Icon(
          Icons.edit_note_rounded,
          color: Colors.orange.shade100,
        ),
      ),
      label: Text(
        'Edit Profile',
        style: TextStyle(
          fontSize: width * 0.03,
          color: Colors.orange.shade100,
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: () {
        print('If you stand for nothing, Burr, what’ll you fall for?');
      },
    );
  }
}
