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
  final Map<Widget, Widget> itemsList = {
    Text(
      '残いいね！',
    ): Text(
      '68',
    ),
    Text(
      '会員ステータス',
    ): Text(
      '有料会員',
    ),
    Text(
      '残ポイント',
    ): Text(
      '10',
    )
  };

  final Map<Widget, Widget> itemsList2 = {
    Icon(
      Icons.thumb_up,
    ): Text(
      'いいね！履歴',
    ),
    Icon(
      Icons.snowshoeing,
    ): Text(
      '足あと',
    ),
    Icon(
      Icons.favorite_rounded,
    ): Text(
      'モテ度チェック',
    ),
  };

  final Map<Widget, Widget> itemsList3 = {
    Icon(
      Icons.settings,
    ): Text(
      '各種設定',
    ),
    Icon(Icons.help): Text(
      'ヘルプ',
    ),
    Icon(
      Icons.star_outline,
    ): Text(
      'お気に入り',
    ),
  };

  final Map<Widget, Widget> itemsList4 = {
    Icon(
      Icons.insert_drive_file_outlined,
    ): Text(
      '恋愛コラム',
    ),
    Icon(
      Icons.format_indent_decrease,
    ): Text(
      'レポート',
    ),
    Icon(
      Icons.notification_important_outlined,
    ): Text(
      'お知らせ',
    ),
  };

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
                  ...itemsList.entries.map(
                    (item) {
                      return Container(
                        color: Colors.grey,
                        child: Column(
                          children: <Widget>[
                            item.key,
                            item.value,
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 16.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ...itemsList2.entries.map(
                    (item) {
                      return Container(
                        color: Colors.grey,
                        child: Column(
                          children: <Widget>[
                            item.key,
                            item.value,
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 16.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ...itemsList3.entries.map(
                    (item) {
                      return Container(
                        color: Colors.grey,
                        child: Column(
                          children: <Widget>[
                            item.key,
                            item.value,
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 16.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ...itemsList4.entries.map(
                    (item) {
                      return Container(
                        color: Colors.grey,
                        child: Column(
                          children: <Widget>[
                            item.key,
                            item.value,
                          ],
                        ),
                      );
                    },
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
