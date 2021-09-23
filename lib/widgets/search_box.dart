import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      height: 40.0,
      decoration: BoxDecoration(
        color: Colors.tealAccent[100],
        // border: Border.all(color: Colors.black, width: 10),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        children: <Widget>[
          Icon(Icons.search_rounded),
          SizedBox(
            width: 8.0,
          ),
          Text('検索条件を設定中')
        ],
      ),
    );
  }
}
