import 'package:app/authProvider.dart';
import 'package:app/forms/loginform.dart';

import 'package:app/pages/navigation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: context.watch<AuthProvider>().stream(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return const loginform();
          return Scaffold(
              body: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "assets/images/Pexelskarolinagrabowska49967351.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Center(
                        child: Text(
                      'Walkmate',
                      style: TextStyle(fontSize: 50),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 150, 80, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 100,
                          height: 100,
                          child: IconButton(
                              onPressed: () => Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const navi())),
                              icon: Icon(
                                Icons.arrow_circle_right_outlined,
                                size: 100,
                                color: Colors.lightBlue,
                              )),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ));
        });
  }
}
