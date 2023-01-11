import 'package:app/forms/home_page.dart';
import 'package:app/models/women/charly.dart';
import 'package:app/models/women/fancy.dart';
import 'package:app/models/women/ladiesleathersandels.dart';
import 'package:app/models/women/ladiesshoes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:app/pages/productsgiftitems.dart';
import 'package:app/pages/productskids.dart';
import 'package:app/pages/productsstationary.dart';
import 'package:app/pages/productsmen.dart';
import 'package:app/pages/productsunisex.dart';

class women extends StatefulWidget {
  const women({super.key});

  @override
  State<women> createState() => _womenState();
}

class _womenState extends State<women> {
  @override
  Widget build(BuildContext context) {
    var img = [
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.yellow,
        shadowColor: Colors.black,
        elevation: 6,
        child: InkWell(
          onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (_) => products())),
          child: Column(children: [
            IconButton(
                onPressed: () => products(),
                icon: Icon(Icons.bedroom_baby_outlined)),
            Text('Kids')
          ]),
        ),
      ),
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.pinkAccent,
        shadowColor: Colors.black,
        elevation: 6,
        child: InkWell(
          onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (_) => women())),
          child: Column(children: [
            IconButton(
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (_) => women())),
                icon: Icon(Icons.girl)),
            Text('women')
          ]),
        ),
      ),
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.blue,
        shadowColor: Colors.black,
        elevation: 6,
        child: InkWell(
          onTap: () => Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => men())),
          child: Column(children: [
            IconButton(
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (_) => men())),
                icon: Icon(Icons.boy_outlined)),
            Text('mens')
          ]),
        ),
      ),
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.lightBlue,
        shadowColor: Colors.black,
        elevation: 6,
        child: InkWell(
          onTap: () => Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => gift())),
          child: Column(children: [
            IconButton(
                onPressed: () => Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_) => gift())),
                icon: Icon(Icons.gif_box_rounded)),
            Text('gift')
          ]),
        ),
      ),
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.pink,
        shadowColor: Colors.black,
        elevation: 6,
        child: InkWell(
          onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (_) => stationary())),
          child: Column(children: [
            IconButton(
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (_) => stationary())),
                icon: Icon(Icons.book_online_outlined)),
            Text('stationary')
          ]),
        ),
      ),
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.pinkAccent,
        shadowColor: Colors.black,
        elevation: 6,
        child: InkWell(
          onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (_) => unisex())),
          child: Column(children: [
            IconButton(
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (_) => unisex())),
                icon: Icon(Icons.people_alt_outlined)),
            Text('Unisex')
          ]),
        ),
      ),
    ];
    var forshow = [
      Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        shadowColor: Colors.black,
        elevation: 6,
        child: InkWell(
          onTap: () {},
          child: Stack(
            children: [
              SizedBox(
                width: 600,
                child: Image(
                  image: AssetImage(
                    'assets/images/women/hair and face products.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(170, 12.4, 0, 0),
                    child: Text(
                      'hair and face products',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 30, color: Colors.tealAccent),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        shadowColor: Colors.black,
        elevation: 6,
        child: InkWell(
          onTap: () {},
          child: Stack(
            children: [
              SizedBox(
                width: 600,
                child: Image(
                  image: AssetImage(
                    'assets/images/women/perfumes.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(170, 72.4, 0, 0),
                    child: Text(
                      'perfumes',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 30, color: Colors.tealAccent),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        shadowColor: Colors.black,
        elevation: 6,
        child: InkWell(
          onTap: () => Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => charly())),
          child: Stack(
            children: [
              SizedBox(
                width: 600,
                child: Image(
                  image: AssetImage(
                    'assets/images/women/womens bag.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(170, 72.4, 0, 0),
                    child: Text(
                      'bags',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 30, color: Colors.tealAccent),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        shadowColor: Colors.black,
        elevation: 6,
        child: InkWell(
          onTap: () => Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => fancy())),
          child: Stack(
            children: [
              SizedBox(
                width: 600,
                child: Image(
                  image: AssetImage(
                    'assets/images/women/womens fancy items.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(170, 72.4, 0, 0),
                    child: Text(
                      'fancy',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 30, color: Colors.tealAccent),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        shadowColor: Colors.black,
        elevation: 6,
        child: InkWell(
          onTap: () => Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (_) => ladiesleathersandels())),
          child: Stack(
            children: [
              SizedBox(
                width: 600,
                child: Image(
                  image: AssetImage(
                    'assets/images/women/womens sandels.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(170, 72.4, 0, 0),
                    child: Text(
                      'Sandels',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 30, color: Colors.tealAccent),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        shadowColor: Colors.black,
        elevation: 6,
        child: InkWell(
          onTap: () => Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => ladiesshoes())),
          child: Stack(
            children: [
              SizedBox(
                width: 600,
                child: Image(
                  image: AssetImage(
                    'assets/images/women/womens shoes.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(170, 72.4, 0, 0),
                    child: Text(
                      'Shoes',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 30, color: Colors.tealAccent),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        leading: Stack(
          children: [
            IconButton(
                onPressed: () => Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (_) => MyHomePage(title: ''))),
                icon: Icon(Icons.arrow_back_ios_outlined)),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 0, 0),
              child: Text(
                'Back',
                style: TextStyle(fontSize: 10),
              ),
            )
          ],
        ),
        title: const Text("women"),
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        elevation: 0.00,
        backgroundColor: Colors.teal,
      ),
      body: Stack(
        children: [
          Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
              child: Center(
                child: SizedBox(
                    width: 350,
                    height: 100,
                    child: Swiper(
                      itemBuilder: (BuildContext context, int index) {
                        return img[index];
                      },
                      itemCount: img.length,
                      viewportFraction: 0.3,
                      scale: 0.9,
                      itemHeight: 10,
                      itemWidth: 1,
                      index: 1,
                    )),
              ),
            ),
          ]),
          Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 187, 0, 0),
              child: Center(
                child: SizedBox(
                    width: 350,
                    height: 368,
                    child: Swiper(
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, int index) {
                        return forshow[index];
                      },
                      itemCount: forshow.length,
                      viewportFraction: 0.3,
                      scale: 0.9,
                      itemHeight: 15,
                      itemWidth: 1,
                    )),
              ),
            ),
          ]),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
