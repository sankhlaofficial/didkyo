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
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: CustomBottomNavItem(
              navIcon: _selectedIndex == 0 ? Icons.home : Icons.home_outlined,
              iconColor:
                  _selectedIndex == 0 ? const Color(0xff80558C) : Colors.black,
              containerColor:
                  _selectedIndex == 0 ? Colors.black : Colors.transparent,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Settings',
            icon: CustomBottomNavItem(
              navIcon: _selectedIndex == 1
                  ? Icons.person_rounded
                  : Icons.person_outlined,
              iconColor:
                  _selectedIndex == 1 ? const Color(0xff80558C) : Colors.black,
              containerColor:
                  _selectedIndex == 1 ? Colors.black : Colors.transparent,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Settings',
            icon: CustomBottomNavItem(
              navIcon: Icons.settings,
              containerColor:
                  _selectedIndex == 2 ? Colors.black : Colors.transparent,
              iconColor:
                  _selectedIndex == 2 ? const Color(0xff80558C) : Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: CustomBottomNavItem(
                navIcon: Icons.trending_up_rounded,
                iconColor: _selectedIndex == 3
                    ? const Color(0xff80558C)
                    : Colors.black,
                containerColor:
                    _selectedIndex == 3 ? Colors.black : Colors.transparent),
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
    required this.iconColor,
  });

  final IconData navIcon;
  final Color containerColor;
  final Color iconColor;

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
        color: iconColor,
      ),
    );
  }
}
