import 'package:diary_app/resource/app_colors.dart';
import 'package:flutter/material.dart';

class WideButton extends StatelessWidget {
  WideButton({
    @required this.buttonTitle,
    @required this.buttonFunc,
  });

  final String buttonTitle;
  final Function buttonFunc;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonFunc,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 8.0,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.teal,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Text(
          buttonTitle,
          style: TextStyle(
            color: AppColors.white,
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
