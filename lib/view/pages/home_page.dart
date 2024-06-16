import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ilabtest/utill/constant.dart';

class HomeViewPage extends StatefulWidget {
  const HomeViewPage({super.key});

  @override
  State<HomeViewPage> createState() => _HomeViewPageState();
}

class _HomeViewPageState extends State<HomeViewPage> {
  bool isPasswordNotShow = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: CircleAvatar(
              minRadius: 16,
              maxRadius: 24,
              backgroundImage:
                  ExactAssetImage('assets/images/profile.webp', scale: 0.2),
              backgroundColor: Colors.black,
            )),
        title: SvgPicture.asset(
          'assets/svg/linkedin_logo.svg',
          width: 96.0,
        ),
        actions: [
          GestureDetector(
              onTap: () {},
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Icon(
                  Icons.notifications,
                  size: 24,
                ),
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              //
              Card(
                color: Colors.white,
                surfaceTintColor: Colors.white,
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Icon(Icons.search),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: TextFormField(
                          style: const TextStyle(fontSize: 16),
                          decoration: const InputDecoration(
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              hintText: 'Try "Android Dev" ',
                              contentPadding: EdgeInsets.all(16)),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Icon(Icons.qr_code),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              AspectRatio(
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
                                  backgroundImage:
                                      AssetImage('assets/images/test_a.jpg'),
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
                                backgroundImage:
                                    AssetImage('assets/images/test_a.jpg'),
                              ),
                            ),
                          ),
                        );
                      }),
                    ],
                  ),
                ),
              ),

              Card(
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
                                backgroundImage:
                                    AssetImage('assets/images/test_a.jpg'),
                              ),
                              const SizedBox(width: 12),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: const TextSpan(
                                      text: "Tony Antonio",
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.black),
                                      children: [
                                        TextSpan(
                                            text: ". 2nd",
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.black))
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  RichText(
                                    text: const TextSpan(
                                      text: "Android Dev at",
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.black),
                                      children: [
                                        TextSpan(
                                            text: " Nixo",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.black))
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  RichText(
                                    text: const TextSpan(
                                      text: "1w",
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.black),
                                      children: [
                                        TextSpan(
                                            text: " Edited",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.black))
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
                              Container(
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
                                            backgroundImage: AssetImage(
                                                'assets/images/test_a.jpg'),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 10,
                                        child: CircleAvatar(
                                          maxRadius: 12,
                                          child: CircleAvatar(
                                            maxRadius: 10,
                                            backgroundImage: AssetImage(
                                                'assets/images/test_a.jpg'),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        child: CircleAvatar(
                                          maxRadius: 12,
                                          child: CircleAvatar(
                                            maxRadius: 10,
                                            backgroundImage: AssetImage(
                                                'assets/images/test_a.jpg'),
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
                                  style: TextStyle(
                                      fontSize: 8, color: Colors.black),
                                  children: [
                                    TextSpan(
                                        text: "Buddhi",
                                        style: TextStyle(
                                            fontSize: 8, color: Colors.black),
                                        children: [
                                          TextSpan(
                                              text: "and 97 others",
                                              style: TextStyle(
                                                  fontSize: 8,
                                                  color: Colors.black))
                                        ]),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "77 comments",
                            style: TextStyle(fontSize: 8),
                          )
                        ],
                      ),
                      const SizedBox(height: 18),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.thumb_up),
                              const SizedBox(width: 14),
                              Icon(Icons.comment),
                              const SizedBox(width: 14),
                              Icon(Icons.send),
                            ],
                          ),
                          Icon(Icons.bookmark)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
