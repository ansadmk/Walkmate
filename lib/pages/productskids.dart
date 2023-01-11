import 'package:app/forms/home_page.dart';
import 'package:app/models/kids/toys.dart';
import 'package:app/pages/productsgiftitems.dart';
import 'package:app/pages/productsstationary.dart';
import 'package:app/pages/productsmen.dart';
import 'package:app/pages/productsunisex.dart';
import 'package:app/pages/productswomen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class products extends StatefulWidget {
  const products({super.key});

  @override
  State<products> createState() => _productsState();
}

class _productsState extends State<products> {
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
                    'assets/images/kidsshoes.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(170, 70, 0, 0),
                    child: Text(
                      'Kids shoes',
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
                    'assets/images/kids/cosmetics.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(170, 40, 0, 0),
                    child: Text(
                      'baby products',
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
                    'assets/images/kids/kids bag.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(170, 70, 0, 0),
                    child: Text(
                      'Kids bags',
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
                    'assets/images/kids/kids bottle.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(170, 40, 0, 0),
                    child: Text(
                      'Kids bottles',
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
                    'assets/images/kids/kids fancy items.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(170, 40, 0, 0),
                    child: Text(
                      'Kids fancy items',
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
                    'assets/images/kids/sandal.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(170, 40, 0, 0),
                    child: Text(
                      'Kids sandals',
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
              context, MaterialPageRoute(builder: (_) => toys())),
          child: Stack(
            children: [
              SizedBox(
                width: 600,
                child: Image(
                  image: AssetImage(
                    'assets/images/kids/toys.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(170, 70, 0, 0),
                    child: Text(
                      'Kids toys',
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
                    'assets/images/kids/umbrella.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(170, 40, 0, 0),
                    child: Text(
                      'Kids umbrella',
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
        title: const Text("Kids"),
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
      body: SingleChildScrollView(
        child: Stack(
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
                        index: 0,
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
      ),
      backgroundColor: Colors.white,
    );
  }
}
