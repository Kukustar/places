import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key? key, required this.currentIndex})
      : super(key: key);
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: currentIndex,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          icon: Icon(
            Icons.list,
          ),
          label: 'Список',
        ),
        BottomNavigationBarItem(
          backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          icon: Icon(Icons.map),
          label: 'Карта',
        ),
        BottomNavigationBarItem(
          backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          icon: Icon(Icons.favorite),
          label: 'Избранное',
        ),
        BottomNavigationBarItem(
          backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          icon: Icon(Icons.settings),
          label: 'Настройки',
        ),
      ],
    );
  }
}