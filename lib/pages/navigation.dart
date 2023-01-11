import 'package:app/pages/keepintouch.dart';
import 'package:app/pages/page1.dart';
import 'package:app/pages/productskids.dart';
import 'package:app/pages/teams.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class navi extends StatefulWidget {
  const navi({super.key});

  @override
  State<navi> createState() => _naviState();
}

class _naviState extends State<navi> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    var nav = [products(), page1(), Contact(), teams()];

    final items = <Widget>[
      const Icon(
        Icons.favorite,
        size: 30,
      ),
      const Icon(
        Icons.home,
        size: 30,
      ),
      const Icon(
        Icons.chat_bubble_sharp,
        size: 30,
      ),
      const Icon(
        Icons.group_work,
        size: 30,
      ),
    ];
    return Scaffold(
      extendBody: true,
      body: nav[index],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        height: 60,
        animationCurve: Curves.easeInCubic,
        animationDuration: Duration(milliseconds: 1000),
        items: items,
        index: index,
        onTap: (index) => setState(() => this.index = index),
        color: Colors.teal,
      ),
    );
  }
}
