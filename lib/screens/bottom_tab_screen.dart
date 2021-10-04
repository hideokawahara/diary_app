import 'package:diary_app/resource/app_colors.dart';
import 'package:diary_app/resource/app_strings.dart';
import 'package:diary_app/screens/chat_screen.dart';
import 'package:diary_app/screens/home_screen.dart';
import 'package:diary_app/screens/like_screen.dart';
import 'package:diary_app/screens/my_page_screen.dart';
import 'package:diary_app/screens/my_profile_screen.dart';
import 'package:diary_app/screens/special_screen.dart';
import 'package:diary_app/screens/user_profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomTabScreen extends StatefulWidget {
  @override
  _BottomTabScreenState createState() => _BottomTabScreenState();
}

class _BottomTabScreenState extends State<BottomTabScreen> {
  int _currentIndex = 0;

  final _pageWidgets = [
    HomeScreen(),
    LikeScreen(),
    ChatScreen(),
    SpecialScreen(),
    MyPageScreen(),
  ];

  final _tabItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      activeIcon: Icon(
        Icons.search,
        color: AppColors.teal,
      ),
      label: AppStrings.tabHomeTitle,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.favorite),
      activeIcon: Icon(
        Icons.favorite,
        color: AppColors.teal,
      ),
      label: AppStrings.tabLikeTitle,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.chat),
      activeIcon: Icon(
        Icons.chat,
        color: AppColors.teal,
      ),
      label: AppStrings.tabChatTitle,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.hotel),
      activeIcon: Icon(
        Icons.hotel,
        color: AppColors.teal,
      ),
      label: AppStrings.tabSpecialTitle,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      activeIcon: Icon(
        Icons.person,
        color: AppColors.teal,
      ),
      label: AppStrings.tabMyPageTitle,
    ),
  ];

  final appRoutes = {
    MyProfileScreen.routeName: (_) => MyProfileScreen(),
    UserProfileScreen.routeName: (_) => UserProfileScreen(),
  };

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        activeColor: AppColors.teal,
        items: _tabItems,
        backgroundColor: Colors.white,
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          routes: appRoutes,
          builder: (context) {
            return _pageWidgets[index];
          },
        );
      },
    );
  }
}
