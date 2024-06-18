import 'package:flutter/material.dart';

class StatusViewArea extends StatefulWidget {
  const StatusViewArea({super.key});

  @override
  State<StatusViewArea> createState() => _StatusViewAreaState();
}

class _StatusViewAreaState extends State<StatusViewArea> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3.2,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            //
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: const Stack(
                children: [
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 235, 6, 106),
                    maxRadius: 32,
                    minRadius: 28,
                    child: CircleAvatar(
                      maxRadius: 30,
                      minRadius: 28,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        maxRadius: 28,
                        minRadius: 28,
                        backgroundImage: AssetImage('assets/images/test_a.jpg'),
                      ),
                    ),
                  ),
                  Positioned(
                      right: 0,
                      bottom: 0,
                      child: CircleAvatar(
                        maxRadius: 14,
                        foregroundColor: Colors.white,
                        child: CircleAvatar(
                            maxRadius: 10,
                            backgroundColor: Colors.blue,
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 16,
                            )),
                      )),
                ],
              ),
            ),
            //
            ...List.generate(10, (index) {
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: const CircleAvatar(
                  backgroundColor: Colors.blue,
                  maxRadius: 32,
                  minRadius: 28,
                  child: CircleAvatar(
                    maxRadius: 30,
                    minRadius: 28,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      maxRadius: 28,
                      minRadius: 28,
                      backgroundImage: AssetImage('assets/images/test_a.jpg'),
                    ),
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
