import 'package:app/pages/productswomen.dart';

import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class charly extends StatefulWidget {
  const charly({super.key});

  @override
  State<charly> createState() => _charlyState();
}

class _charlyState extends State<charly> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            ModelViewer(
              backgroundColor: Color.fromARGB(0xFF, 0xEE, 0xEE, 0xEE),
              src: 'assets/models/charly.glb',
              alt: "A 3D model of an astronaut",
              ar: true,
              arModes: const ['scene-viewer', 'webxr', 'quick-look'],
              autoRotate: true,
              cameraControls: true,
            ),
            /*Padding(
              padding: const EdgeInsets.fromLTRB(290, 350, 0, 0),
              child: IconButton(
                  splashRadius: 100,
                  onPressed: () => Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (_) => ())),
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 50,
                  )),
            ),*/
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 60, 0, 0),
              child: IconButton(
                  splashRadius: 100,
                  onPressed: () => Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (_) => women())),
                  icon: Icon(
                    Icons.logout_outlined,
                    size: 50,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
