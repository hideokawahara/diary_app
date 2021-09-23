import 'package:diary_app/resource/app_colors.dart';
import 'package:flutter/material.dart';

class LikeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.teal,
        title: Text(
          'いいね',
        ),
      ),
      backgroundColor: AppColors.white,
      body: LikeScreenBody(),
    );
  }
}

class LikeScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
