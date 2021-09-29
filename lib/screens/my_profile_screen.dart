import 'package:diary_app/resource/app_colors.dart';
import 'package:flutter/material.dart';

class MyProfileScreen extends StatelessWidget {
  static const routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.teal,
        title: Text(
          'プロフィール',
        ),
      ),
      backgroundColor: AppColors.white,
      body: MyProfileScreenBody(),
    );
  }
}

class MyProfileScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          CircleAvatar(
            radius: 110.0,
            backgroundImage: AssetImage(
              'images/dummy/myPage_icon.jpg',
            ),
          ),
        ],
      ),
    );
  }
}
