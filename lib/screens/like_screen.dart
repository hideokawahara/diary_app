import 'package:diary_app/resource/app_colors.dart';
import 'package:diary_app/widgets/button.dart';
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
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8.0,
                ),
                height: 40.0,
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Text(
                  'いいね！がありません',
                  style: TextStyle(color: AppColors.white),
                ),
              ),
              SizedBox(
                height: 124.0,
              ),
              Icon(
                Icons.library_books_outlined,
                size: 100.0,
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                '新着いいね！はありません',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 24.0,
              ),
              WideButton(
                buttonTitle: 'いいね！をもらうには？',
                buttonFunc: () {},
              ),
              SizedBox(
                height: 16.0,
              ),
              GestureDetector(
                onTap: () {
                  print('いいね');
                  // いいね履歴へ飛ぶ
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('いいね！履歴を見る'),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
