import 'package:flutter/material.dart';
import 'package:task1/screens/profile_page.dart';

import 'common_widgets/login_with_google.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Center(
              child: LoginWithGoogle(),
            ),
            ElevatedButton(
                onPressed: () => {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: ((context) => const ProfilePage()),
                        ),
                      ),
                    },
                child: const Text("Profile Page"))
          ],
        ),
      ),
    );
  }
}
