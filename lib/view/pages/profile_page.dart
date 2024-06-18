import 'package:flutter/material.dart';
import 'package:ilabtest/view/pages/components/bottom_nav_bar.dart';

class ProfieViewPage extends StatefulWidget {
  const ProfieViewPage({super.key});

  @override
  State<ProfieViewPage> createState() => _ProfieViewPageState();
}

class _ProfieViewPageState extends State<ProfieViewPage> {
  bool isPasswordNotShow = true;
  int currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 1,
                      height: MediaQuery.of(context).size.height * 0.12,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/test_a.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    const SizedBox(height: 20),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.edit,
                          color: Colors.black,
                        ),
                        SizedBox(width: 16),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
                const Positioned(
                  left: 16,
                  bottom: 0,
                  child: CircleAvatar(
                    maxRadius: 48,
                    backgroundImage: AssetImage('assets/images/test_a.jpg'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            //
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  //

                  const Text("Stebin Alex", style: TextStyle(fontSize: 21)),
                  const Text("Freelance iOS Developer | UIKit",
                      style: TextStyle(fontSize: 16)),
                  const Text("Talks about #swift and #iosdevelopment",
                      style: TextStyle(fontSize: 12, color: Colors.grey)),

                  const SizedBox(height: 12),

                  const Text("LEAN TRANSITION SOLUTIONS - LTS",
                      style: TextStyle(fontSize: 16)),
                  const Text("Thiruvananthapuram , Kerala , India",
                      style: TextStyle(fontSize: 12, color: Colors.grey)),

                  const SizedBox(height: 16),

                  //  followers
                  RichText(
                    text: const TextSpan(
                      text: "4413 followers",
                      style: TextStyle(fontSize: 16, color: Colors.blue),
                      children: [
                        TextSpan(
                          text: " . ",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                          children: [
                            TextSpan(
                              text: "500+ connections",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.blue),
                              children: [],
                            )
                          ],
                        )
                      ],
                    ),
                  ),

                  const SizedBox(height: 16),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: Colors.blue,
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 16),
                        child: const Center(
                          child: Text(
                            "Open to",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            border: Border.all(color: Colors.grey, width: 1)),
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 16),
                        child: const Center(
                          child: Text(
                            "Add Section",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(64),
                            border: Border.all(color: Colors.grey, width: 1)),
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 8),
                        child: const Center(
                            child: Icon(Icons.more_horiz, color: Colors.grey)),
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),

                  const SizedBox(height: 16),

                  Container(
                    width: MediaQuery.of(context).size.width * 1,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 226, 226, 209),
                        borderRadius: BorderRadius.circular(12)),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 16),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Open to work",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600)),
                        SizedBox(height: 2),
                        Text("iOS Developer roles",
                            style: TextStyle(fontSize: 14)),
                        SizedBox(height: 4),
                        Text("See all details",
                            style: TextStyle(fontSize: 14, color: Colors.blue))
                      ],
                    ),
                  ),

                  const SizedBox(height: 16),

                  Container(
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 255, 245, 245)),
                      height: 8),
                ],
              ),
            ),
            //About
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("About", style: TextStyle(fontSize: 16)),
                  SizedBox(height: 8),
                  Text("About", style: TextStyle(fontSize: 16)),
                ],
              ),
            ),

            Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 245, 245)),
                height: 8),
            // Post
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
                                style:
                                    TextStyle(fontSize: 8, color: Colors.black),
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
            ),
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavBarView(onTap: (index) {
        setState(() {
          currentTabIndex = index;
        });
      }),
    );
  }
}
