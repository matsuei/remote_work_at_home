import 'package:flutter/material.dart';

import 'housework.dart';

class HouseworkList extends StatefulWidget {
  const HouseworkList();

  @override
  _HouseworkListState createState() => _HouseworkListState();
}

class _HouseworkListState extends State<HouseworkList> {
  List<Housework> _newsList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildTodoList(),
      floatingActionButton: FloatingActionButton(
          onPressed: _showAddToDoPage
          , child: Icon(Icons.add)),
    );
  }

  @override
  void initState() {
    super.initState();
    _showAddToDoPage();
  }

  void _showAddToDoPage() {

  }

  Widget _buildTodoList() {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i >= _newsList.length) {
          return null;
        } else {
          return _buildRow(_newsList[i]);
        }
      },
      itemCount: _newsList.length,);
  }

  Widget _buildRow(Housework item) {
    return
      Container(
        height: 150.0,
        child: Card(
          child: new InkWell(
            onTap: () {
              // セルタップ
            },
            child: ListTile(
              leading: Container(
                  height : 150,
                  width : 100,
                  child : Icon(item.iconData)),
              title: Container(
                  height: 100,
                  child: Text(item.title, textAlign: TextAlign.center, style: TextStyle(fontSize: 14.0),)),
              subtitle: Text(""),
            ),
          ),
        ),
      );
  }
}