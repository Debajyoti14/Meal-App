import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widgets/main_drawer.dart';

import 'categories_Screen.dart';
import 'favourites_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text('Meals'),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(
                    Icons.category,
                  ),
                  text: 'Categories',
                ),
                Tab(
                  icon: Icon(
                    Icons.star,
                  ),
                  text: 'Favourtite',
                ),
              ],
            ),
          ),
          drawer: MainDrawer(),
          body: TabBarView(children: <Widget>[
            CategoriesScreen(),
            FavouritesScreen(),
          ])),
    );
  }
}
