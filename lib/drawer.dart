import 'package:flutter/material.dart';

class Drawers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _drawerHeader(),
          _drawerItem(
              icon: Icons.audiotrack,
              text: 'PlayList',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(0);
                Navigator.pop(context);
              }),
          Divider(
            height: 10,
            thickness: 1,
          ),
          _drawerItem(
              icon: Icons.collections,
              text: 'Collections',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(1);
                Navigator.pop(context);
              }),
          Divider(
            height: 10,
            thickness: 1,
          ),
          _drawerItem(
              icon: Icons.favorite,
              text: 'Favorite',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(2);
                Navigator.pop(context);
              }),
          Divider(
            height: 10,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(image: AssetImage('asset/images/depai.jpeg'), fit: BoxFit.cover),
    ),
    // otherAccountsPictures: [
    //   ClipOval(
    //     child: Image(image: NetworkImage('https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'), fit: BoxFit.cover),
    //   ),
    //   ClipOval(
    //     child: Image(image: NetworkImage('https://images.unsplash.com/photo-1564564321837-a57b7070ac4f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=876&q=80'), fit: BoxFit.cover),
    //   )
    // ],
    accountName: Text('Devi Oktaviani'),
    accountEmail: Text('depioktvn@gmail.com'),
  );
}

Widget _drawerItem({required IconData icon, required String text, required GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}

class Playlist extends StatelessWidget {
  final List lagu = [
    "Justin Bieber - Baby",
    "Tiara Andini - Merasa Indah",
    "Mahalini - Sisa Rasa",
    "Devano - Menyimpan Rasa",
    "Rizky Febian - Ragu",
    "Olivia Rodrigo - Happier",
    "Stephanie - I Love You 3000",
    "Rossa - Terlalu Cinta"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
            title: Text(lagu[index], style: TextStyle(fontSize: 20)),
            subtitle: Text("Lagu dari " + lagu[index]),
            leading: Icon(Icons.audiotrack),
          ));
        },
        itemCount: lagu.length,
      ),
    );
  }
}

class Collections extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 2, children: <Widget>[
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.asset(
                "asset/images/justin bieber.jpg",
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'Justin Bieber - Baby',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.asset(
                "asset/images/rizky febian.jpg",
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'Rizky Febian - Ragu',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.asset(
                "asset/images/rossa.jpg",
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'Rossa - Terlalu Cinta',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.asset(
                "asset/images/tiara andini.jpg",
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'Tiara Andini - Merasa Indah',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.asset(
                "asset/images/mahalini.jpg",
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'Mahalini - Sisa Rasa',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.asset(
                "asset/images/devano.jpg",
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'Devano - Menyimpan Rasa',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.asset(
                "asset/images/stephanie.jpg",
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'Stephanie - I Love You 3000',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
      ]),
    );
  }
}

class Favorite extends StatelessWidget {
  final List ffv = [
    "Anneth Delliecia - Mungkin Hari Ini Esok atau Nanti",
    "Denny Caknan - Satru",
    "Lyodra - Pesan Terakhir",
    "Mahalini - Melawan Restu",
    "Via Vallen - Pikir Keri",
    "Arvian Dwi - Ajarkan Aku",
    "Mahen - Pura Pura Lupa"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
            title: Text(ffv[index], style: TextStyle(fontSize: 20)),
            subtitle: Text("Lagu dari " + ffv[index]),
            leading: Icon(Icons.audiotrack),
          ));
        },
        itemCount: ffv.length,
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(child: _tabBar, color: Colors.white);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
