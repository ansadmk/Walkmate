import 'package:app/models/women/ladiesshoes.dart';
import 'package:app/pages/productswomen.dart';
import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class ladiesshoes2 extends StatefulWidget {
  const ladiesshoes2({super.key});

  @override
  State<ladiesshoes2> createState() => _ladiesshoes2State();
}

class _ladiesshoes2State extends State<ladiesshoes2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            ModelViewer(
              backgroundColor: Color.fromARGB(0xFF, 0xEE, 0xEE, 0xEE),
              src: 'assets/models/ladiesshoes2.glb', // a bundled asset file
              alt: "A 3D model of an astronaut",
              ar: true,
              arModes: const ['scene-viewer', 'webxr', 'quick-look'],
              autoRotate: true,
              cameraControls: true,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(290, 350, 0, 0),
              child: IconButton(
                  splashRadius: 100,
                  onPressed: () => Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (_) => ladiesshoes())),
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 50,
                  )),
            ),
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
