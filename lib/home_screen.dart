import 'package:flutter/material.dart';
import 'package:portfolio/project_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'Project',
              ),
              Tab(
                text: 'Saved',
              ),
              Tab(
                text: 'Shared',
              ),
              Tab(
                text: 'Achievement',
              ),
            ],
          ),
          backgroundColor: Colors.transparent,
          title: const Text(
            'Portfolio',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.shopping_bag, size: 25, color: Colors.red),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.notifications, size: 25, color: Colors.red),
            ),
          ],
        ),
        body: TabBarView(
          children: [
            ProjectPage(),
            ProjectPage(),
            ProjectPage(),
            ProjectPage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: const Color(0xfffdf5532),
          selectedIconTheme: const IconThemeData(size: 35),
          unselectedItemColor: Colors.black38,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            bottomNaveBar('Home', 'assets/home.png'),
            bottomNaveBar('Portfolio', 'assets/bag.png'),
            bottomNaveBar('Input', 'assets/input.png'),
            bottomNaveBar('Profile', 'assets/profile.png'),
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem bottomNaveBar(String lable, String address) {
    return BottomNavigationBarItem(
        label: lable,
        icon: ImageIcon(size: 20, AssetImage(address)),
        backgroundColor: Colors.black12);
  }
}
