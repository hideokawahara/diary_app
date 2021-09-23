import 'package:diary_app/resource/app_colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.teal,
        title: Text(
          'ホーム',
        ),
      ),
      backgroundColor: AppColors.white,
      body: HomeScreenBody(),
    );
  }
}

class HomeScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
