import 'package:didkyo/presentation/posts/global_posts/global_posts_page.dart';
import 'package:didkyo/presentation/posts/post_form/post_form_page.dart';
import 'package:didkyo/presentation/profile/profile_overview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppHome extends StatefulWidget {
  const AppHome({Key? key}) : super(key: key);

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static final List<Widget> _pages = <Widget>[
    GlobalPostsPage(),
    ProfileOverview(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => const PostFormPage());
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: const Color(0xff80558C),
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: const IconThemeData(color: Colors.amberAccent),
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: CustomBottomNavItem(
              navIcon: Icons.home,
              containerColor: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Settings',
            icon: CustomBottomNavItem(
                navIcon: Icons.person_rounded, containerColor: Colors.black),
          ),
          BottomNavigationBarItem(
            label: 'Settings',
            icon: CustomBottomNavItem(
                navIcon: Icons.settings, containerColor: Colors.black),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: CustomBottomNavItem(
                navIcon: Icons.trending_up_rounded,
                containerColor: Colors.black),
          ),
        ],
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
    );
  }
}

class CustomBottomNavItem extends StatelessWidget {
  const CustomBottomNavItem({
    super.key,
    required this.navIcon,
    required this.containerColor,
  });

  final IconData navIcon;
  final Color containerColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: 55,
      height: 30,
      decoration: BoxDecoration(
          color: containerColor, borderRadius: BorderRadius.circular(10)),
      child: Icon(
        navIcon,
        color: const Color(0xff80558C),
      ),
    );
  }
}
