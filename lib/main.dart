import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'TEST',
      theme: new ThemeData.dark(),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

// TickerProviderが必要なので、SingleTickerProviderStateMixinを追加
class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  // 表示するタブのリストを作成
  final List<Tab> tabs = <Tab>[
    Tab(text: 'tab1'),
    Tab(text: 'tab2'),
    Tab(text: 'tab3'),
  ];

  // TtabControllerはTabBarのインデックスを管理
  TabController _tabController;

  // TStatefulWidgetを使うので、initStateにTabControllerのインスタンスを生成
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: tabs.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TabBarはAppBarのBottomで使用
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          tabs: tabs,
        ),
      ),

      // TabBarViewのWidgetはTabBarと同じくChildren　Widgetが必要
      // mapメソッドでTabで作成したコンテンツのウィジェットを作成し、それをリストで取り出してChildren　Widgetに設定
      body: TabBarView(
        controller: _tabController,
        children: tabs.map((Tab tab) {
          return createTab(tab);
        }).toList(),
      ),
    );
  }

  Widget createTab(Tab tab) {
    return Center(
        child: Text(
      tab.text + 'page',
      style: const TextStyle(
        fontSize: 32.0,
        color: Colors.blue,
      ),
    ));
  }
}
