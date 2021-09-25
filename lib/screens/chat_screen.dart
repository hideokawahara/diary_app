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

class User {
  User({
    @required this.name,
    @required this.message,
    @required this.path,
  });

  final String name;
  final String path;
  final String message;
}

class ChatScreenBody extends StatelessWidget {
  List<Color> colorList = [Colors.cyan, Colors.deepOrange, Colors.indigo];

  final List<User> userList = [
    User(
      name: 'やまだ',
      message: 'こんにちは！よろしくお願い！',
      path: 'images/dummy/dummy_person1.jpeg',
    ),
    User(
      name: 'たなか',
      message: 'こんにちは！よろしくお願い！',
      path: 'images/dummy/dummy_person2.jpeg',
    ),
    User(
      name: 'すずき',
      message: 'こんにちは！よろしくお願い！',
      path: 'images/dummy/dummy_person3.jpeg',
    ),
    User(
      name: 'やまだ',
      message: 'こんにちは！よろしくお願い！',
      path: 'images/dummy/dummy_person1.jpeg',
    ),
    User(
      name: 'たなか',
      message: 'こんにちは！よろしくお願い！',
      path: 'images/dummy/dummy_person2.jpeg',
    ),
    User(
      name: 'すずき',
      message: 'こんにちは！よろしくお願い！',
      path: 'images/dummy/dummy_person3.jpeg',
    ),
    User(
      name: 'やまだ',
      message: 'こんにちは！よろしくお願い！',
      path: 'images/dummy/dummy_person1.jpeg',
    ),
    User(
      name: 'たなか',
      message: 'こんにちは！よろしくお願い！',
      path: 'images/dummy/dummy_person2.jpeg',
    ),
    User(
      name: 'すずき',
      message: 'こんにちは！よろしくお願い！',
      path: 'images/dummy/dummy_person3.jpeg',
    ),
    User(
      name: 'やまだ',
      message: 'こんにちは！よろしくお願い！',
      path: 'images/dummy/dummy_person1.jpeg',
    ),
    User(
      name: 'たなか',
      message: 'こんにちは！よろしくお願い！',
      path: 'images/dummy/dummy_person2.jpeg',
    ),
    User(
      name: 'すずき',
      message: 'こんにちは！よろしくお願い！',
      path: 'images/dummy/dummy_person3.jpeg',
    ),
    User(
      name: 'やまだ',
      message: 'こんにちは！よろしくお願い！',
      path: 'images/dummy/dummy_person1.jpeg',
    ),
    User(
      name: 'たなか',
      message: 'こんにちは！よろしくお願い！',
      path: 'images/dummy/dummy_person2.jpeg',
    ),
    User(
      name: 'すずき',
      message: 'こんにちは！よろしくお願い！',
      path: 'images/dummy/dummy_person3.jpeg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: 80,
            color: Colors.teal[200],
            // 何かのバナーを入れる
          ),
          ListView.builder(
            itemCount: userList.length,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(userList[index].path),
                ),
                title: Text(userList[index].name),
                subtitle: Text(userList[index].message),
                trailing: Text('1日前'),
              );
            },
          ),
        ],
      ),
    );
  }
}
