import 'package:flutter/material.dart';

const Color buttonPrimaryColor = Color(0xFF4CAF50);

final ThemeData lightTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: Colors.white,
  cardColor: const Color(0xFFF5F5F5),
  primaryIconTheme: const IconThemeData(
    color: Color(0xFF3B3E5B)
  ),
  bottomAppBarTheme: const BottomAppBarTheme(color: Colors.white),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    selectedIconTheme: IconThemeData(color: Color(0xFF252849)),
    unselectedIconTheme: IconThemeData(color: Colors.grey)
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))
        ),
        backgroundColor: MaterialStateProperty.all(buttonPrimaryColor)),
  ),
  tabBarTheme: const TabBarTheme(
    labelColor: Colors.white,
    unselectedLabelColor: Color(0xFF7C7E92),
    unselectedLabelStyle: TextStyle(
      fontWeight: FontWeight.w700,
    ),
    labelStyle: TextStyle(
        fontWeight: FontWeight.w700,
    )
  ),
  primaryTextTheme: const TextTheme(
    bodyText1: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 14,
        color: Color(0xFF3B3E5B),
        fontWeight: FontWeight.w400),
    bodyText2: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 14,
        color: Color(0xFF7C7E92),
        fontWeight: FontWeight.w400),
    subtitle2: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 14,
        color: Color(0xFF3B3E5B),
        fontWeight: FontWeight.w700),
    headline6: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: Color(0xFF3B3E5B)),
      headline4: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 32,
        color: Color(0xFF3B3E5B),
        fontWeight: FontWeight.w700
      )
  ),
);

final ThemeData darkTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: const Color(0xFF21222c),
  bottomAppBarTheme: const BottomAppBarTheme(color: Color(0xFF21222c)),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color(0xFF21222c),
    selectedIconTheme: IconThemeData(color: Colors.white),
  ),
  tabBarTheme: const TabBarTheme(
      labelColor: Colors.white,
      unselectedLabelColor: Color(0xFF7C7E92),
      unselectedLabelStyle: TextStyle(
        fontWeight: FontWeight.w700,
      ),
      labelStyle: TextStyle(
        fontWeight: FontWeight.w700,
      )
  ),
  cardColor: const Color.fromRGBO(26, 26, 32, 1.0),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(buttonPrimaryColor)
    ),
  ),
  primaryTextTheme: const TextTheme(
    bodyText1: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 14,
        color: Colors.white,
        fontWeight: FontWeight.w400
    ),
    bodyText2: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 14,
        color: Color.fromRGBO(124, 126, 146, 0.56),
        fontWeight: FontWeight.w400
    ),
    subtitle2: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 14,
        color: Color(0xFF7C7E92),
        fontWeight: FontWeight.w700),
    headline6: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: Colors.white
    ),
      headline4: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 32,
          color: Colors.white,
          fontWeight: FontWeight.w700
      )
  ),
);
