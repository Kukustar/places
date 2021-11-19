import 'package:flutter/material.dart';

const Color buttonPrimaryColor = Color(0xFF4CAF50);

final ThemeData lightTheme = ThemeData.light().copyWith(
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(buttonPrimaryColor)
        ),
    ),
    primaryTextTheme: TextTheme(
      headline6: TextStyle(

      )
    )
);

final ThemeData darkTheme = ThemeData.dark().copyWith(
      scaffoldBackgroundColor: const Color(0xFF21222c),
      bottomAppBarTheme: const BottomAppBarTheme(
        color: Color(0xFF21222c)
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color(0xFF21222c),
        selectedIconTheme: IconThemeData(
          color: Colors.white
        ),
      ),
      cardColor: const Color.fromRGBO(26, 26, 32, 1.0),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(buttonPrimaryColor)
        ),
    )
);
