import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              title: Text("sliver app"),
              leading: Icon(Icons.settings),
              actions: [
                Icon(Icons.search),
              ],
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                childCount: 10,
                (context, index) => Container(
                  height: 150,
                  color: Colors.red,
                  margin: EdgeInsets.all(2),
                  width: 150,
                ),
              ),
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 2),
            )
          ],
        ),
      ),
    );
  }
}
