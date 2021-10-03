import 'package:diary_app/resource/app_colors.dart';
import 'package:flutter/material.dart';

class MyProfileScreen extends StatelessWidget {
  static const routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.teal,
        title: Text(
          'プロフィール',
        ),
      ),
      backgroundColor: AppColors.white,
      body: MyProfileScreenBody(),
    );
  }
}

class MyProfileScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Container(
            // width: double.infinity,
            decoration: BoxDecoration(
                // color: Colors.blueAccent,
                // image: DecorationImage(
                //     image: AssetImage(
                //       'images/dummy/dummy_person1.jpeg',
                //     ),
                //     fit: BoxFit.cover),
                ),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
