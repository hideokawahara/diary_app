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
      style: TextStyle(
        color: Colors.grey,
      ),
    ): Text(
      '68',
      style: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        color: Colors.black54,
      ),
    ),
    Text(
      '会員ステータス',
      style: TextStyle(
        color: Colors.grey,
      ),
    ): Text(
      '有料会員',
      style: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        color: Colors.black54,
      ),
    ),
    Text(
      '残ポイント',
      style: TextStyle(
        color: Colors.grey,
      ),
    ): Text(
      '10',
      style: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        color: Colors.black54,
      ),
    )
  };

  final Map<Widget, Widget> itemsList2 = {
    Icon(
      Icons.thumb_up,
      size: 40.0,
    ): Text(
      'いいね！履歴',
      style: TextStyle(
        color: Colors.grey,
      ),
    ),
    Icon(
      Icons.snowshoeing,
      size: 40.0,
    ): Text(
      '足あと',
      style: TextStyle(
        color: Colors.grey,
      ),
    ),
    Icon(
      Icons.favorite_rounded,
      size: 40.0,
    ): Text(
      'モテ度チェック',
      style: TextStyle(
        color: Colors.grey,
      ),
    ),
  };

  final Map<Widget, Widget> itemsList3 = {
    Icon(
      Icons.settings,
      size: 40.0,
    ): Text(
      '各種設定',
      style: TextStyle(
        color: Colors.grey,
      ),
    ),
    Icon(
      Icons.help,
      size: 40.0,
    ): Text(
      'ヘルプ',
      style: TextStyle(
        color: Colors.grey,
      ),
    ),
    Icon(
      Icons.star_outline,
      size: 40.0,
    ): Text(
      'お気に入り',
      style: TextStyle(
        color: Colors.grey,
      ),
    ),
  };

  final Map<Widget, Widget> itemsList4 = {
    Icon(
      Icons.insert_drive_file_outlined,
      size: 40.0,
    ): Text(
      '恋愛コラム',
      style: TextStyle(
        color: Colors.grey,
      ),
    ),
    Icon(
      Icons.format_indent_decrease,
      size: 40.0,
    ): Text(
      'レポート',
      style: TextStyle(
        color: Colors.grey,
      ),
    ),
    Icon(
      Icons.notification_important_outlined,
      size: 40.0,
    ): Text(
      'お知らせ',
      style: TextStyle(
        color: Colors.grey,
      ),
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
        SizedBox(
          height: 32.0,
        ),
        Container(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ...itemsList.entries.map(
                    (item) {
                      return Container(
                        height: 100.0,
                        width: 100.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            item.key,
                            SizedBox(
                              height: 8.0,
                            ),
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
                        height: 100.0,
                        width: 100.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            item.key,
                            SizedBox(
                              height: 16.0,
                            ),
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
                        height: 100.0,
                        width: 100.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            item.key,
                            SizedBox(
                              height: 16.0,
                            ),
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
                        height: 100.0,
                        width: 100.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            item.key,
                            SizedBox(
                              height: 16.0,
                            ),
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
