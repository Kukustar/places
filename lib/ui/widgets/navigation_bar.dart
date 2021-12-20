import 'package:flutter/material.dart';
import 'package:places/ui/screen/settings_screen.dart';
import 'package:places/ui/screen/sight_list_screen.dart';
import 'package:places/ui/screen/visiting_screen.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key? key, required this.currentIndex})
      : super(key: key);
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (int value) {
        switch(value) {
          case 0:
            if(currentIndex != 0) {
              Navigator.push<MaterialPageRoute>(context, MaterialPageRoute(builder: (context) => SightListScreen()));
            }
            break;
          case 1:
            Navigator.push<MaterialPageRoute>(context, MaterialPageRoute(builder: (context) => SightListScreen()));
            break;
          case 2:
            if(currentIndex != 2) {
              Navigator.push<MaterialPageRoute>(context, MaterialPageRoute(builder: (context) => VisitingScreen()));
            }
            break;
          case 3:
            if(currentIndex != 3) {
              Navigator.push<MaterialPageRoute>(context, MaterialPageRoute(builder: (context) => SettingsScreen()));
            }
            break;
          default:
            break;
        }
      },
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: currentIndex,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          icon: const Icon(
            Icons.list,
          ),
          label: 'Список',
        ),
        BottomNavigationBarItem(
          backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          icon: const Icon(Icons.map),
          label: 'Карта',
        ),
        BottomNavigationBarItem(
          backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          icon: const Icon(Icons.favorite),
          label: 'Избранное',
        ),
        BottomNavigationBarItem(
          backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          icon: const Icon(Icons.settings),
          label: 'Настройки',
        ),
      ],
    );
  }
}