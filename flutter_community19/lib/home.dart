import 'package:flutter/material.dart';
import 'package:flutter_community19/debugging.dart';
import 'package:flutter_community19/developing.dart';
import 'package:flutter_community19/general.dart';
import 'package:flutter_community19/settings.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String email,uname;
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.lightBlue),
                accountEmail: new Text(email.toString()),
                accountName: new Text(uname.toString()),
                currentAccountPicture: new CircleAvatar(
                  backgroundColor: Colors.yellow,
                  child: new Text(uname.toString()),
                ),
              ),
              ListTileTheme(
                
                textColor: Colors.blue,
                child: ListTile(
                  title: new Text("Settings"),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => new Settings()));
                  },
                ),
              )
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: new Text("Hack19"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.home), text: "General"),
              Tab(
                icon: Icon(Icons.add),
                text: "Development",
              ),
              Tab(
                icon: Icon(Icons.list),
                text: "Debug",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            new General(),
            new Debugging(),
            new Development()
          ],
        ),
      ),
    );
  }
}


