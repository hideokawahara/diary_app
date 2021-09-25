import 'package:diary_app/resource/app_colors.dart';
import 'package:flutter/material.dart';

class SpecialContentsButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      height: 60.0,
      decoration: BoxDecoration(
        color: AppColors.teal,
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(
            Icons.wb_sunny,
            color: AppColors.white,
          ),
          SizedBox(
            width: 8.0,
          ),
          Text(
            'スペシャルコンテンツ',
            style: TextStyle(color: AppColors.white),
          ),
        ],
      ),
    );
  }
}
