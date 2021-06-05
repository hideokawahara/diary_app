import 'package:diary_app/widgets/tasks_list.dart';
import 'package:flutter/material.dart';

void main() => runApp(TabbedAppBarSample());

class TabbedAppBarSample extends StatelessWidget {
  Widget buildBottomSheet(BuildContext context) {
    return Container(
      child: Center(
        child: Text('test'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: choices.length,
        child: Scaffold(
          backgroundColor: Colors.white70,
          appBar: AppBar(
            title: const Text('Tabbed AppBar'),
            backgroundColor: Colors.teal[900],
            bottom: TabBar(
              tabs: choices.map((Choice choice) {
                return Tab(
                  text: choice.title,
                  icon: Icon(choice.icon),
                );
              }).toList(),
            ),
          ),
          body: TabBarView(
            children: choices.map((Choice choice) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: ChoiceCard(choice: choice),
              );
            }).toList(),
          ),
          floatingActionButton: Builder(
            builder: (context) => FloatingActionButton(
              backgroundColor: Colors.teal[900],
              child: Icon(Icons.add),
              onPressed: () {
                showModalBottomSheet(
                    context: context, builder: buildBottomSheet);
              },
            ),
          ),
        ),
      ),
    );
  }
}

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'CAR', icon: Icons.directions_car),
  const Choice(title: 'BICYCLE', icon: Icons.directions_bike),
  const Choice(title: 'BOAT', icon: Icons.directions_boat),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              child: Icon(choice.icon, size: 30.0, color: textStyle.color),
              backgroundColor: Colors.orangeAccent,
              radius: 30.0,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(choice.title + 'あ', style: textStyle),
            Image(
              image: AssetImage('images/rails.png'),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    )),
                child: TasksList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
