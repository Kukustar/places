import 'package:flutter/material.dart';
import 'package:places/providers/settings.dart';
import 'package:places/res/themes.dart';
import 'package:places/ui/screen/sight_list_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
              create: (context) => SettingsModel()
          )
        ],
        child: Consumer<SettingsModel>(
            builder: (_, settings, child) {
              return MaterialApp(
                theme: lightTheme,
                darkTheme: darkTheme,
                themeMode: settings.appTheme,
                home: SightListScreen()
              );
            })
    );
  }
}