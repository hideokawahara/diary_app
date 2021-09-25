import 'package:diary_app/resource/app_colors.dart';
import 'package:diary_app/widgets/search_box.dart';
import 'package:diary_app/widgets/special_contents_button.dart';
import 'package:diary_app/widgets/users_grid_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.teal,
        title: Text(
          'ホーム',
          style: TextStyle(
            color: AppColors.white,
          ),
        ),
      ),
      backgroundColor: AppColors.white,
      body: HomeScreenBody(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SpecialContentsButton(),
    );
  }
}

class HomeScreenBody extends StatelessWidget {
  final List<String> users = [
    'images/dummy/dummy_person1.jpeg',
    'images/dummy/dummy_person2.jpeg',
    'images/dummy/dummy_person3.jpeg',
    'images/dummy/dummy_person1.jpeg',
    'images/dummy/dummy_person2.jpeg',
    'images/dummy/dummy_person3.jpeg',
    'images/dummy/dummy_person1.jpeg',
    'images/dummy/dummy_person2.jpeg',
    'images/dummy/dummy_person3.jpeg',
    'images/dummy/dummy_person1.jpeg',
    'images/dummy/dummy_person2.jpeg',
    'images/dummy/dummy_person3.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            SearchBox(),
            SizedBox(
              height: 8.0,
            ),
            UsersGridView(users: users),
          ],
        ),
      ),
    );
  }
}
