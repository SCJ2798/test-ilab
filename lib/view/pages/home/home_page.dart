import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ilabtest/model/post.dart';
import 'package:ilabtest/view/pages/components/bottom_nav_bar.dart';
import 'package:ilabtest/view/pages/home/components/post_view_card.dart';
import 'package:ilabtest/view/pages/home/components/status_view_area.dart';
import 'package:ilabtest/view_model/home_view_model.dart';
import 'package:provider/provider.dart';

class HomeViewPage extends StatefulWidget {
  const HomeViewPage({super.key});

  @override
  State<HomeViewPage> createState() => _HomeViewPageState();
}

class _HomeViewPageState extends State<HomeViewPage> {
  bool isPasswordNotShow = true;
  int currentTabIndex = 0;
  //
  List<Post> posts = [];
  Future<void> init(BuildContext context) async {}

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      context.read<HomeViewModel>().getPosts();
    });
  }

  @override
  Widget build(BuildContext context) {
    posts = Provider.of<HomeViewModel>(context).postlist;

    return Scaffold(
        appBar: AppBar(
          leading: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/profile');
                },
                child: const CircleAvatar(
                  minRadius: 16,
                  maxRadius: 24,
                  backgroundImage:
                      ExactAssetImage('assets/images/profile.webp', scale: 0.2),
                  backgroundColor: Colors.black,
                ),
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
            scrollDirection: Axis.vertical,
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
                        const Expanded(
                          flex: 1,
                          child: Icon(Icons.search),
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
                        const Expanded(
                          flex: 1,
                          child: Icon(Icons.qr_code),
                        ),
                      ],
                    ),
                  ),
                ),

                const StatusViewArea(),

                ...List.generate(
                    posts.length, (index) => PostViewCard(post: posts[index])),
              ],
            ),
          )),
        ),
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
        }));
  }
}
