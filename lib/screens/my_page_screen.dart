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
    return Column(
      children: <Widget>[
        SizedBox(
          height: 24.0,
        ),
        ProfileEditSection(),
        Container(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        Text(
                          '残いいね！',
                        ),
                        Text(
                          '68',
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Text(
                          '会員ステータス',
                        ),
                        Text(
                          '有料会員',
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Text(
                          '残ポイント',
                        ),
                        Text(
                          '10',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.thumb_up,
                        ),
                        Text('いいね！履歴'),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.snowshoeing),
                        Text('足あと'),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.favorite_rounded),
                        Text('モテ度チェック'),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: Column(
                      children: [
                        Icon(Icons.settings),
                        Text('各種設定'),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.help),
                        Text('ヘルプ'),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.star_outline),
                        Text('お気に入り'),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: Column(
                      children: [
                        Icon(Icons.insert_drive_file_outlined),
                        Text('恋愛コラム'),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.format_indent_decrease),
                        Text('レポート'),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.notification_important_outlined),
                        Text('お知らせ'),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ProfileEditSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        CircleAvatar(
          radius: 40.0,
          backgroundImage: AssetImage(
            'images/dummy/myPage_icon.jpg',
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
              color: AppColors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.edit_outlined,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 8.0,
                ),
                Text(
                  'プロフィールを確認・編集',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
