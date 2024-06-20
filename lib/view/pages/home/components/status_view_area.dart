import 'package:flutter/material.dart';
import 'package:ilabtest/model/highlight.dart';
import 'package:ilabtest/model/user.dart';
import 'package:ilabtest/view_model/home_view_model.dart';
import 'package:ilabtest/view_model/profile_view_model.dart';
import 'package:provider/provider.dart';

class StatusViewArea extends StatefulWidget {
  const StatusViewArea({super.key});

  @override
  State<StatusViewArea> createState() => _StatusViewAreaState();
}

class _StatusViewAreaState extends State<StatusViewArea> {
  List<Highlight> highlights = [];
  User profile = User(profileImage: "");

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      context.read<HomeViewModel>().getHightligts();
      context.read<ProfileViewModel>().getUserProfile();
    });
  }

  @override
  Widget build(BuildContext context) {
    highlights = Provider.of<HomeViewModel>(context).highlightList;
    User user = Provider.of<ProfileViewModel>(context).profile;

    return AspectRatio(
      aspectRatio: 3.2,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            //
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Stack(
                children: [
                  CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 18, 123, 243),
                    maxRadius: 32,
                    minRadius: 28,
                    child: CircleAvatar(
                      maxRadius: 30,
                      minRadius: 28,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        maxRadius: 28,
                        minRadius: 28,
                        backgroundImage: NetworkImage(user.profileImage!),
                      ),
                    ),
                  ),
                  const Positioned(
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
            ...List.generate(highlights.length, (index) {
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: CircleAvatar(
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
                          NetworkImage(highlights[index].userProfile),
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
