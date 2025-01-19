import 'package:flutter/material.dart';

class MoreGestures extends StatefulWidget {
  const MoreGestures({super.key});

  @override
  State<MoreGestures> createState() {
    return _MoreGesturesState();
  }
}

class _MoreGesturesState extends State<MoreGestures> {
  double _scale = 1.0;
  double _prevScale = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              splashColor: Colors.deepPurple,
              child: Container(
                height: 150,
                width: 150,
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Draggable(
                data: Colors.orangeAccent,
                onDraggableCanceled: (velocity, offset) {},
                feedback: Container(
                  width: 150,
                  height: 150,
                  color: Colors.orangeAccent.withOpacity(0.5),
                  child: const Center(
                    child: Text(
                      'Box...',
                      style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.none,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.orangeAccent,
                  child: const Center(
                    child: Text('Drag'),
                  ),
                )),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onScaleStart: (details) {
                _prevScale = _scale;
              },
              onScaleUpdate: (details) {
                setState(() {
                  _scale = _prevScale * details.scale;
                });
              },
              // onScaleEnd: (details) {
              //   setState(() {
              //     _prevScale = 1.0;
              //   });
              // },
              child: Transform.scale(
                  scale: _scale,
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.red,
                    child: Center(
                      child: Text("Pinch to Zoom"),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
