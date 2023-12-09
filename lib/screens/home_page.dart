import 'package:daryo_clone/screens/drawer/drawer.dart';
import 'package:daryo_clone/screens/latest_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            title: const Text("Daryo"),
            bottom: const TabBar(
              isScrollable: true,
              tabs: [
                Tab(
                  child: Text("So'ngi yangiliklar"),
                ),
                Tab(
                  child: Text("Asosiy yangiliklar"),
                ),
                Tab(
                  child: Text("Eng ko'p"),
                ),
              ],
            )),
        body: TabBarView(
          children: [
            const LatestPage(),
            Container(
              color: Colors.yellow,
              child: Text("qwerty2"),
            ),
            Container(
              color: Colors.green,
              child: Text("qwerty3"),
            ),
          ],
        ),
        drawer: MyDrawer(),
      ),
    );
  }
}
