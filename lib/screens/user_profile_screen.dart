import 'package:diary_app/resource/app_colors.dart';
import 'package:flutter/material.dart';

class UserProfileScreen extends StatelessWidget {
  static const routeName = '/userProfile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.teal,
        title: Text(
          'ユーザー用プロフィール',
        ),
      ),
      backgroundColor: AppColors.white,
      body: UserProfileScreenBody(),
    );
  }
}

class UserProfileScreenBody extends StatelessWidget {
  final Map<String, String> userInfo = {
    'ニックネーム': 'でおでお',
    '年齢': '25歳',
    '血液型': 'B型',
    '兄弟姉妹': '次男 / 次女',
    '話せる言語': '日本語、英語',
    '居住地': '大阪 大阪市',
    '勤務地': '大阪 大阪市',
    '出身地': '京都',
    '学歴': '大学卒',
    '職種': 'エンジニア',
    '職業名': 'モバイルエンジニア、プログラマー',
    '年収': '200~400万円',
    '身長': '164cm',
    '体型': 'やや細め',
    '結婚歴': '未婚',
    '子供の有無': 'なし',
    '結婚に対する意志': '良い人がいれば',
    '子供が欲しいか': 'はい',
    '家事・育児': '積極的に参加したい',
    '出会うまでの希望': '気が合えば会いたい',
    '初回デート費用': '男性が多めに払う',
    '同居人': '一人暮らし',
    '休日': '土日',
    'お酒': '飲む',
    'タバコ': '吸わない',
    'Facebook 友達数': '150人以上'
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(),
              child: CircleAvatar(
                radius: 110.0,
                backgroundImage: AssetImage(
                  'images/dummy/myPage_icon.jpg',
                ),
              ),
            ),
            Container(
              color: Colors.black12,
              padding: const EdgeInsets.fromLTRB(
                16.0,
                24.0,
                16.0,
                0,
              ),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'でおでお 25歳 大阪',
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.bubble_chart_outlined,
                      ),
                      Text(
                        'よろしく！',
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 10.0,
                        height: 10.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: Colors.green,
                        ),
                      ),
                      Text(
                        'オンライン',
                      ),
                    ],
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('自己紹介'),
                        Text(
                          'はじめまして！よろしくお願いします！',
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Text('基本情報'),
                        ...userInfo.entries.map(
                          (item) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  item.key,
                                ),
                                Text(
                                  item.value,
                                ),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
