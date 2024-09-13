import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../layout/favoritesTap.dart';
import '../layout/historyTap.dart';
import '../layout/settingTap/settingScreen.dart';

import 'color_manager.dart';
import 'layout/HomeTab/homeScreen.dart';

class home extends StatefulWidget {
  static const String rountName = 'home';

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentIndex],
      bottomNavigationBar: BottomAppBar(
        color: Theme.of(context).colorScheme.primary,
        shape: const CircularNotchedRectangle(),
        notchMargin: 12,
        child: BottomNavigationBar(
          backgroundColor: Theme.of(context).colorScheme.background,
          elevation: 0.0,
          currentIndex: currentIndex,
          selectedItemColor: ColorManager.colorblueblack,
          unselectedItemColor: ColorManager.colorOffwhite,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            currentIndex = index;
            setState(() {});
          },
          items:  [
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
                icon: Icon(
                  Icons.home,
                  size: 22,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                label: "home", ),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite, size: 22,
                  color: Theme.of(context).colorScheme.secondary,),
                label: "favorite"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.history,
                  size: 22, color: Theme.of(context).colorScheme.secondary
                ),
                label: "history"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings, size: 22, color: Theme.of(context).colorScheme.secondary),
                label: "settings"),
          ],
        ),
      ),

    );
  }
}

List<Widget> tabs = [
  HomeScreen(),FavororitesTab(),HistoryTab(),SettingScreen()
];
