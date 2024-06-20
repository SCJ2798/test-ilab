import 'package:flutter/material.dart';
import 'package:ilabtest/model/post.dart';

class PostViewCard extends StatefulWidget {
  final Post post;
  const PostViewCard({super.key, required this.post});

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
                    CircleAvatar(
                      maxRadius: 32,
                      minRadius: 32,
                      backgroundImage:
                          NetworkImage(widget.post.user.profileImage!),
                    ),
                    const SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text:
                                "${widget.post.user.firstName} ${widget.post.user.lastName}",
                            style: const TextStyle(
                                fontSize: 14, color: Colors.black),
                            children: [
                              TextSpan(
                                  text: ". ${widget.post.user.position}",
                                  style: const TextStyle(
                                      overflow: TextOverflow.fade,
                                      fontSize: 8,
                                      color: Colors.black))
                            ],
                          ),
                        ),
                        const SizedBox(height: 2),
                        RichText(
                          text: TextSpan(
                            text: "${widget.post.user.title}",
                            style: const TextStyle(
                                fontSize: 12, color: Colors.black),
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
            Text(
              widget.post.description,
              style: const TextStyle(fontSize: 12),
            ),
            const SizedBox(height: 18),
            // Image
            AspectRatio(
              aspectRatio: 2,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(widget.post.postImage),
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
                    SizedBox(
                      width: 50,
                      child: AspectRatio(
                        aspectRatio: 2,
                        child: Stack(
                          fit: StackFit.loose,
                          children: [
                            ReactUserAvatar(
                              image: 'assets/images/test_a.jpg',
                              left: 20,
                            ),
                            ReactUserAvatar(
                              image: 'assets/images/test_a.jpg',
                              left: 10,
                            ),
                            ReactUserAvatar(
                              image: 'assets/images/test_a.jpg',
                              left: 0,
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

// ignore: must_be_immutable
class ReactUserAvatar extends StatelessWidget {
  String image;
  double left;
  ReactUserAvatar({super.key, required this.image, required this.left});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      child: CircleAvatar(
        maxRadius: 12,
        child: CircleAvatar(
          maxRadius: 10,
          backgroundImage: AssetImage(image),
        ),
      ),
    );
  }
}
