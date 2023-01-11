import 'package:app/forms/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:url_launcher/url_launcher_string.dart';

class teams extends StatefulWidget {
  const teams({super.key});

  @override
  State<teams> createState() => _teamsState();
}

class _teamsState extends State<teams> {
  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    var img = [
      'assets/images/amerr.png',
      'assets/images/anu.png',
      'assets/images/sahid.png',
      'assets/images/siyad.png',
      'assets/images/yasi.png',
    ];
    final List<String> nav = [
      'https://www.instagram.com/ameer__nazz____/',
      'https://www.instagram.com/__ansad___/',
      'https://www.instagram.com/_._sahid._007/',
      'https://www.instagram.com/siyad_._mhd/',
      'https://www.instagram.com/yasin_33_gk/'
    ];

    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: Row(
              children: [
                IconButton(
                    onPressed: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (_) => MyHomePage(title: ""))),
                    icon: Icon(Icons.arrow_back_ios_new_outlined)),
                SizedBox(
                  width: 100,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Text(
                    'Teams',
                    style: TextStyle(fontSize: 30),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: Center(
              child: SizedBox(
                width: 350,
                height: 500,
                child: Swiper(
                  scrollDirection: Axis.vertical,
                  layout: SwiperLayout.STACK,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () => launchUrlString(nav[index],
                          mode: LaunchMode.inAppWebView),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(
                          image: AssetImage(img[index]),
                        ),
                      ),
                    );
                  },
                  autoplay: true,
                  itemCount: img.length,
                  viewportFraction: 0.8,
                  scale: 0.9,
                  itemHeight: 200,
                  itemWidth: 300,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /* _ameer() async {
    var url = Uri.parse('https://www.instagram.com/ameer__nazz____/');
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _anu() async {
    var url = Uri.parse("https://www.instagram.com/__ansad___/");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _sahid() async {
    var url = Uri.parse("https://www.instagram.com/_._sahid._007/");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _siyad() async {
    var url = Uri.parse("https://www.instagram.com/siyad_._mhd/");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _yasin() async {
    var url = Uri.parse("https://www.instagram.com/gk_yasin33/");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }*/
}
