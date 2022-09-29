import 'package:bilibili_flutter/generated/assets.dart';
import 'package:bilibili_flutter/routes_advance/hot_page/hot.dart';
//import 'package:bilibili_flutter/routes/hot_page.dart';
import 'package:bilibili_flutter/routes_advance/hot_page/hot_page_view.dart';

import 'package:bilibili_flutter/routes/rank_page.dart';
import 'package:flutter/material.dart';



class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children:  [
          // HotPage(),
          HotView(),
          const RankPage(),
        ],
        onPageChanged: (p) {
          setState(() {
            _currentPage = p;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (p) {
          _pageController.jumpToPage(p);
        },
        selectedLabelStyle: const TextStyle(
            color: Colors.pink, fontSize: 12, fontWeight: FontWeight.bold),
        unselectedLabelStyle: const TextStyle(
            color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
        currentIndex: _currentPage,
        items: [

          BottomNavigationBarItem(
              activeIcon: Image.asset(
                Assets.imagesIcHot,
                color: Colors.pink,
                width: 24,
                height: 24,
              ),
              icon: Image.asset(
                Assets.imagesIcHot,
                color: Colors.black,
                width: 24,
                height: 24,
              ),
              label: "综合热门"),
          BottomNavigationBarItem(
              activeIcon: Image.asset(
                Assets.imagesIcRanking,
                color: Colors.pink,
                width: 24,
                height: 24,
              ),
              icon: Image.asset(
                Assets.imagesIcRanking,
                color: Colors.black,
                width: 24,
                height: 24,
              ),
              label: "排行"),
        ],
      ),
    );
  }
}
