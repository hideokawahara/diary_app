import 'package:diary_app/resource/app_colors.dart';
import 'package:flutter/material.dart';

class SpecialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.teal,
        title: Text(
          '好み',
        ),
      ),
      backgroundColor: AppColors.white,
      body: SpecialScreenBody(),
    );
  }
}

class SpecialScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
