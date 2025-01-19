import 'package:flutter/material.dart';
import 'package:gesture_app/more_gestures.dart';

class GestureApp extends StatefulWidget {
  const GestureApp({super.key});

  @override
  State<GestureApp> createState() {
    return _GestureAppState();
  }
}

class _GestureAppState extends State<GestureApp> {
  String gestureName = 'No gesture';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gesture App'),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            gestureName = 'Tap gesture';
          });
        },
        onDoubleTap: () {
          setState(() {
            gestureName = 'Double tap gesture';
          });
        },
        onPanStart: (details) {
          setState(() {
            gestureName = 'Pan start gesture';
          });
        },
        onPanUpdate: (details) {
          setState(() {
            gestureName = 'Pan update gesture';
          });
        },
        onLongPress: () {
          setState(() {
            gestureName = 'Long Press gesture';
          });
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Dismissible(
                  key: Key('1'),
                  child: Container(
                      width: 200, height: 200, color: Colors.greenAccent)),
              SizedBox(
                height: 30,
              ),
              Text(gestureName)
            ],
          ),
        ),
      ),
      floatingActionButton: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MoreGestures()));
          },
          child: Text("Next Screen")),
    );
  }
}
