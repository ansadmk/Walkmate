import 'package:app/forms/loginform.dart';
import 'package:app/pages/navigation.dart';
import 'package:app/pages/page1.dart';
import 'package:flutter/material.dart';
import 'package:app/authProvider.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:url_launcher/url_launcher.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () => Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (_) => navi())),
                    icon: Icon(Icons.arrow_back_ios_rounded)),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(80, 95, 0, 0),
              child: SizedBox(
                width: 200,
                height: 200,
                child: GestureDetector(
                  onTap: () => _launchURLApp1(),
                  child: Image.asset(
                    'assets/images/Figmap.png',
                    fit: BoxFit.fill,
                    width: 500,
                    height: 400,
                  ),
                ),
              )),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 350, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () => _launchURLApp(),
                    icon: Icon(Icons.whatsapp_outlined)),
                IconButton(
                    onPressed: () => _faceBook(),
                    icon: Icon(Icons.facebook_outlined)),
                IconButton(
                    onPressed: () => _Instagram(),
                    icon: Image.asset('assets/images/87390.png')),
                IconButton(
                    onPressed: () => _snapchat(),
                    icon: Image.asset('assets/images/snapchat.png')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 400, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () => _github(),
                    icon: Image.asset('assets/images/25231.png')),
                IconButton(
                    onPressed: () => _twitter(),
                    icon: Image.asset('assets/images/twitter.png')),
                IconButton(onPressed: () => _phone(), icon: Icon(Icons.phone)),
                IconButton(
                    onPressed: () => _youtube(),
                    icon: Image.asset('assets/images/youtube.png')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 500, 0, 0),
            child: Center(
              child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(primary: Colors.teal),
                  onPressed: () => context.read<AuthProvider>().signOut(),
                  icon: Icon(Icons.logout_outlined),
                  label: Text('Logout')),
            ),
          )
        ],
      )),
    );
  }

  _launchURLApp1() async {
    var url = "https://goo.gl/maps/2gfwMc5gJMdKFFC67";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLApp() async {
    var url = "https://wa.me/919207513163";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _faceBook() async {
    var url = Uri.parse("https://www.facebook.com/walk.mate.37");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _Instagram() async {
    var url = Uri.parse("https://www.instagram.com/walkm.ate/");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _github() async {
    var url = Uri.parse("https://github.com/ansadmk");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _twitter() async {
    var url = Uri.parse("https://twitter.com/MkAnsad");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _snapchat() async {
    var url =
        "https://www.snapchat.com/add/ansad_mk?share_id=IQvCF0sulLg&locale=en-US";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _youtube() async {
    var url = Uri.parse("https://www.youtube.com/watch?v=jI-sRDRQoZI");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _phone() async {
    var url = Uri.parse("tel:917559980885");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
