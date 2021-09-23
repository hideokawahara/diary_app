import 'package:diary_app/resource/app_colors.dart';
import 'package:flutter/material.dart';

class MyPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.teal,
        title: Text(
          'マイページ',
        ),
      ),
      backgroundColor: AppColors.white,
      body: MyPageScreenBody(),
    );
  }
}

class MyPageScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
