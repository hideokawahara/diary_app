import 'package:diary_app/resource/app_colors.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.teal,
        title: Text(
          'チャット',
        ),
      ),
      backgroundColor: AppColors.white,
      body: ChatScreenBody(),
    );
  }
}

class ChatScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
