import 'package:flutter/material.dart';
import 'drawer.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),
    title: "Belajar Drawer",
    debugShowCheckedModeBanner: false,
    home: BelajarNavigationDrawer(),
  ));
}

class BelajarNavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text("DEPAI SINGSONG"),
            bottom: TabBar(tabs: [
              new Tab(icon: new Icon(Icons.audiotrack), text: "PlayList"),
              new Tab(icon: new Icon(Icons.collections), text: "Collections"),
              new Tab(icon: new Icon(Icons.favorite), text: "Favorite"),
            ]),
          ),
          drawer: Drawers(),
          // endDrawer: CustomDrawer(),
          body: TabBarView(
            children: <Widget>[
              Playlist(),
              Collections(),
              Favorite()
            ],
          )));
}
