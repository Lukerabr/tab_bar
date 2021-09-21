import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(
        length: 3,
        vsync: this
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Abas"),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              text: "Home",
              icon: Icon(Icons.home),
            ),
            Tab(
              text: "Email",
              icon: Icon(Icons.email),
            ),
            Tab(
              text: "Conta",
              icon: Icon(Icons.account_circle),
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Text("Primeira Página"),
          Text("Segunda Página"),
          Text("Terceira Página")
        ],
      ),
    );
  }
}
