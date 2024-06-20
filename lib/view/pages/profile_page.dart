import 'package:flutter/material.dart';
import 'package:ilabtest/model/post.dart';
import 'package:ilabtest/model/user.dart';
import 'package:ilabtest/view/pages/components/bottom_nav_bar.dart';
import 'package:ilabtest/view/pages/home/components/post_view_card.dart';
import 'package:ilabtest/view_model/profile_view_model.dart';
import 'package:provider/provider.dart';

class ProfieViewPage extends StatefulWidget {
  const ProfieViewPage({super.key});

  @override
  State<ProfieViewPage> createState() => _ProfieViewPageState();
}

class _ProfieViewPageState extends State<ProfieViewPage> {
  bool isPasswordNotShow = true;
  int currentTabIndex = 0;

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      Provider.of<ProfileViewModel>(context, listen: false).getUserProfile();
      Provider.of<ProfileViewModel>(context, listen: false).getUserPost('10');
    });
  }

  @override
  Widget build(BuildContext context) {
    User profile = Provider.of<ProfileViewModel>(context).profile;
    List<Post> userPosts = Provider.of<ProfileViewModel>(context).userPosts;

    return Scaffold(
      appBar: AppBar(),
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
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(profile.coverImage!),
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
                Positioned(
                  left: 16,
                  bottom: 0,
                  child: CircleAvatar(
                    maxRadius: 48,
                    backgroundImage: NetworkImage(profile.profileImage!),
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

                  Text("${profile.firstName ?? ''} ${profile.lastName ?? ''}",
                      style: const TextStyle(fontSize: 21)),
                  Text(profile.title ?? "",
                      style: const TextStyle(fontSize: 16)),
                  Text(profile.tags ?? "",
                      style: const TextStyle(fontSize: 12, color: Colors.grey)),
                  const SizedBox(height: 12),
                  Text(profile.location ?? "",
                      style: const TextStyle(fontSize: 12, color: Colors.grey)),
                  const SizedBox(height: 16),

                  //  followers
                  RichText(
                    text: TextSpan(
                      text: "${profile.followers ?? '0'} followers",
                      style: const TextStyle(fontSize: 16, color: Colors.blue),
                      children: [
                        TextSpan(
                          text: " . ",
                          style: const TextStyle(
                              fontSize: 16, color: Colors.black),
                          children: [
                            TextSpan(
                              text:
                                  "${profile.connections ?? '0'}+ connections",
                              style: const TextStyle(
                                  fontSize: 16, color: Colors.blue),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("About", style: TextStyle(fontSize: 16)),
                  const SizedBox(height: 8),
                  Text(profile.about ?? '',
                      style: const TextStyle(fontSize: 16)),
                ],
              ),
            ),

            Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 245, 245)),
                height: 8),
            // Post
            ...List.generate(userPosts.length,
                (index) => PostViewCard(post: userPosts[index])),
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
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
