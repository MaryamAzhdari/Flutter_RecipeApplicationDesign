import 'package:flutter/material.dart';
import 'package:flutter_recipee_app/presentaion/Screens/Country.dart';
import 'package:flutter_recipee_app/presentaion/Screens/Time.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int _curentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _curentIndex,
        children: const [
          CategoryPage(),
        ],
      ),
    );
  }
}

class CategoryPage extends StatelessWidget {
  const CategoryPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Column(
          children: [
            Container(
              color: const Color.fromARGB(255, 59, 15, 1),
              child: TabBar(
                isScrollable: true,
                indicatorColor: Colors.red,
                tabs: [
                  Tab(
                    text: "Country".toUpperCase(),
                  ),
                  Tab(
                    text: "Time".toUpperCase(),
                  ),
                ],
                labelColor: Color.fromARGB(255, 247, 181, 181),
                indicator: DotIndicator(
                  color: const Color.fromARGB(255, 247, 181, 181),
                  distanceFromCenter: 16,
                  radius: 3,
                  paintingStyle: PaintingStyle.fill,
                ),
                unselectedLabelColor: const Color.fromARGB(255, 153, 144, 143),//.withOpacity(0.3),
                unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal,fontSize: 12),
                labelStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
                labelPadding: EdgeInsets.symmetric(
                  horizontal: 24,
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  Country(),
                  Time(),
                  ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

