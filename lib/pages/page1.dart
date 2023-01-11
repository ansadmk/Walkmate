import 'package:app/forms/home_page.dart';
import 'package:app/pages/keepintouch.dart';
import 'package:app/pages/productskids.dart';
import 'package:app/pages/teams.dart';

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    var img = [
      'assets/images/Bitmap (1).png',
      'assets/images/Bitmap (2).png',
      'assets/images/Bitmap.png'
    ];

    var nav = [Contact(), teams(), products()];

    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      body: Stack(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 70, 0, 0),
              child: IconButton(
                onPressed: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const MyHomePage(title: ''))),
                icon: const Icon(
                  Icons.arrow_back,
                ),
                splashRadius: 20,
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 70, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Walkmate',
                style: TextStyle(fontSize: 40),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
          child: Center(
            child: SizedBox(
              width: 350,
              height: 400,
              child: Swiper(
                layout: SwiperLayout.STACK,
                itemBuilder: (BuildContext context, int index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Ink.image(
                        image: AssetImage(img[index]),
                        fit: BoxFit.fill,
                        child: InkWell(
                          onTap: () => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (_) => nav[index]),
                          ),
                        )),
                  );
                },
                autoplay: true,
                itemCount: 3,
                viewportFraction: 0.8,
                scale: 0.9,
                itemHeight: 400,
                itemWidth: 300,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
