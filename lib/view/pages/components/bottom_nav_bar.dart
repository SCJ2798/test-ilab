import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BottomNavBarView extends StatefulWidget {
  BottomNavBarView({super.key, required this.onTap});

  Function(int currentIndex) onTap;

  @override
  State<BottomNavBarView> createState() => _BottomNavBarViewState();
}

class _BottomNavBarViewState extends State<BottomNavBarView> {
  int currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.02), blurRadius: 2),
        ],
      ),
      child: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Colors.white,
        shadowColor: Colors.black,
        surfaceTintColor: Colors.white38,
        elevation: 10,
        notchMargin: 16.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // left
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MaterialButton(
                  minWidth: MediaQuery.of(context).size.width * 0.15,
                  onPressed: () {
                    setState(() {
                      currentTabIndex = 0;
                      widget.onTap(currentTabIndex);
                    });
                  },
                  child: Center(
                    child: Icon(
                      Icons.home,
                      color: currentTabIndex == 0 ? Colors.blue : Colors.grey,
                    ),
                  ),
                ),
                MaterialButton(
                  minWidth: MediaQuery.of(context).size.width * 0.15,
                  onPressed: () {
                    setState(() {
                      currentTabIndex = 1;
                    });
                  },
                  child: Center(
                    child: Icon(
                      Icons.people,
                      color: currentTabIndex == 1 ? Colors.blue : Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            // Right
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MaterialButton(
                  minWidth: MediaQuery.of(context).size.width * 0.15,
                  onPressed: () {
                    setState(() {
                      currentTabIndex = 2;
                    });
                  },
                  child: Center(
                    child: Icon(
                      Icons.chat,
                      color: currentTabIndex == 2 ? Colors.blue : Colors.grey,
                    ),
                  ),
                ),
                MaterialButton(
                  minWidth: MediaQuery.of(context).size.width * 0.15,
                  onPressed: () {
                    setState(() {
                      currentTabIndex = 3;
                    });
                  },
                  child: Center(
                    child: Icon(
                      Icons.luggage,
                      color: currentTabIndex == 3 ? Colors.blue : Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
