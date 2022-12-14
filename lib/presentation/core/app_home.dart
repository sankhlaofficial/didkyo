import 'package:didkyo/presentation/posts/global_posts/global_posts_page.dart';
import 'package:didkyo/presentation/posts/post_form/post_form_page.dart';
import 'package:didkyo/presentation/profile/profile_overview.dart';
import 'package:didkyo/presentation/settings/user_provider.dart';
import 'package:didkyo/presentation/trending/trending_page.dart';
import 'package:flutter/material.dart';

class AppHome extends StatefulWidget {
  const AppHome({Key? key}) : super(key: key);

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  int _selectedIndex = 0;
  final _pageController = PageController();
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

      _pageController.animateToPage(index,
          duration: const Duration(milliseconds: 200), curve: Curves.linear);
    });
  }

  static final List<Widget> _pages = <Widget>[
    const GlobalPostsPage(),
    const TrendingPage(),
    const PostFormPage(),
    const ProfileOverview(),
    const UserProvider()
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          elevation: 0,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Theme.of(context).colorScheme.primary,
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: const IconThemeData(color: Colors.amberAccent),
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: CustomBottomNavItem(
                navIcon: Icons.home_outlined,
                iconColor: _selectedIndex == 0
                    ? Theme.of(context).colorScheme.secondary
                    : Colors.grey,
                containerColor: Colors.transparent,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Trending',
              icon: CustomBottomNavItem(
                navIcon: Icons.trending_up_outlined,
                iconColor: _selectedIndex == 1
                    ? Theme.of(context).colorScheme.secondary
                    : Colors.grey,
                containerColor: Colors.transparent,
              ),
            ),
            const BottomNavigationBarItem(
                label: 'Create',
                icon: CircleAvatar(
                  child: Icon(Icons.add),
                )),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: CustomBottomNavItem(
                navIcon: Icons.person_outlined,
                containerColor: Colors.transparent,
                iconColor: _selectedIndex == 3
                    ? Theme.of(context).colorScheme.secondary
                    : Colors.grey,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Settings',
              icon: CustomBottomNavItem(
                  navIcon: Icons.settings_outlined,
                  iconColor: _selectedIndex == 4
                      ? Theme.of(context).colorScheme.secondary
                      : Colors.grey,
                  containerColor: Colors.transparent),
            ),
          ],
        ),
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: (index) {
          setState(() => _selectedIndex = index);
        },
        children: _pages,
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
