import 'package:flutter/material.dart';

class PostViewCard extends StatefulWidget {
  const PostViewCard({super.key});

  @override
  State<PostViewCard> createState() => _PostViewCardState();
}

class _PostViewCardState extends State<PostViewCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            // Head
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      maxRadius: 32,
                      minRadius: 32,
                      backgroundImage: AssetImage('assets/images/test_a.jpg'),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        RichText(
                          text: const TextSpan(
                            text: "Tony Antonio",
                            style: TextStyle(fontSize: 14, color: Colors.black),
                            children: [
                              TextSpan(
                                  text: ". 2nd",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.black))
                            ],
                          ),
                        ),
                        const SizedBox(height: 2),
                        RichText(
                          text: const TextSpan(
                            text: "Android Dev at",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                            children: [
                              TextSpan(
                                  text: " Nixo",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black))
                            ],
                          ),
                        ),
                        const SizedBox(height: 2),
                        RichText(
                          text: const TextSpan(
                            text: "1w",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                            children: [
                              TextSpan(
                                  text: " Edited",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black))
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                GestureDetector(
                  child: const Icon(Icons.more_vert),
                )
              ],
            ),
            // Caption
            const SizedBox(height: 18),
            const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In rutrum dignissim elementum. a",
              style: TextStyle(fontSize: 12),
            ),
            const SizedBox(height: 18),
            // Image
            AspectRatio(
              aspectRatio: 2,
              child: Container(
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage("assets/images/test_a.jpg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(16.0)),
              ),
            ),
            const SizedBox(height: 18),
            //  Reacts & Comments
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 50,
                      child: AspectRatio(
                        aspectRatio: 2,
                        child: Stack(
                          fit: StackFit.loose,
                          children: [
                            Positioned(
                              left: 20,
                              child: CircleAvatar(
                                maxRadius: 12,
                                child: CircleAvatar(
                                  maxRadius: 10,
                                  backgroundImage:
                                      AssetImage('assets/images/test_a.jpg'),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 10,
                              child: CircleAvatar(
                                maxRadius: 12,
                                child: CircleAvatar(
                                  maxRadius: 10,
                                  backgroundImage:
                                      AssetImage('assets/images/test_a.jpg'),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              child: CircleAvatar(
                                maxRadius: 12,
                                child: CircleAvatar(
                                  maxRadius: 10,
                                  backgroundImage:
                                      AssetImage('assets/images/test_a.jpg'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    RichText(
                      text: const TextSpan(
                        text: "Liked by ",
                        style: TextStyle(fontSize: 8, color: Colors.black),
                        children: [
                          TextSpan(
                              text: "Buddhi",
                              style:
                                  TextStyle(fontSize: 8, color: Colors.black),
                              children: [
                                TextSpan(
                                    text: "and 97 others",
                                    style: TextStyle(
                                        fontSize: 8, color: Colors.black))
                              ]),
                        ],
                      ),
                    ),
                  ],
                ),
                const Text(
                  "77 comments",
                  style: TextStyle(fontSize: 8),
                )
              ],
            ),
            const SizedBox(height: 18),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.thumb_up),
                    SizedBox(width: 14),
                    Icon(Icons.comment),
                    SizedBox(width: 14),
                    Icon(Icons.send),
                  ],
                ),
                Icon(Icons.bookmark)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
