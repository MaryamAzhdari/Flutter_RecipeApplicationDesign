import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/presentaion/Screens/Category.dart';
import 'package:flutter_recipe_app/presentaion/Screens/FavoriteList.dart';
import 'package:flutter_recipe_app/presentaion/Screens/NewRecipe.dart';
import 'package:flutter_recipe_app/presentaion/Screens/ShoppingList.dart';
import 'package:simple_icons/simple_icons.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _curentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          //For Showing in all pages
          type: BottomNavigationBarType.fixed,
          // backgroundColor: const Color.fromARGB(255, 255, 223, 129),
          // selectedItemColor: const Color.fromARGB(255, 175, 65, 1),
          //backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          backgroundColor: Color.fromARGB(255, 39, 146, 160),
          selectedLabelStyle:
              TextStyle(color: Color.fromARGB(255, 6, 122, 143)),
          selectedItemColor: Color.fromARGB(255, 203, 255, 250),
          unselectedItemColor: Color.fromARGB(255, 61, 62, 62),
          selectedFontSize: 14,
          unselectedFontSize: 10,
          //selectedIconTheme: sty,
          onTap: (index) {
            setState(() {
              _curentIndex = index;
            });
          },
          currentIndex: _curentIndex,
          items: const [
            BottomNavigationBarItem(
                // activeIcon: Icon(
                //   Icons.home,
                //   color: Color.fromARGB(255, 6, 122, 143),
                // ),
                icon: Icon(
                  SimpleIcons.homeadvisor,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favorite'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag), label: 'Shopping List'),
            //BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Theme'),
          ]),
      body: Container(
        color: const Color.fromARGB(255, 102, 100, 100),
        child: IndexedStack(
          index: _curentIndex,
          children: const [
            NewRecipes(),
            FavoriteList(),
            Shoppinglist()
          ],
        ),
      ),
    );
  }
}

class NewRecipes extends StatelessWidget {
  const NewRecipes({
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
            TabBar(
              isScrollable: true,
              indicatorColor: Colors.red,
              tabs: [
                Tab(
                  text: "New Recipes".toUpperCase(),
                ),
                Tab(
                  text: "Categories".toUpperCase(),
                ),
              ],
              labelColor: Colors.white,
              indicator: DotIndicator(
                color: Colors.white,
                distanceFromCenter: 16,
                radius: 3,
                paintingStyle: PaintingStyle.fill,
              ),
              unselectedLabelColor: const Color.fromARGB(221, 28, 27, 27),
              labelStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              unselectedLabelStyle:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              labelPadding: EdgeInsets.symmetric(
                horizontal: 24,
              ),
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  NewRecipe(),
                  Category(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[400],
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.home,
            color: Colors.blue,
          ),
          Icon(
            Icons.account_balance,
          ),
          Icon(
            Icons.heart_broken_outlined,
          ),
          Icon(
            Icons.account_balance_outlined,
          ),
        ],
      ),
    );
  }
}
