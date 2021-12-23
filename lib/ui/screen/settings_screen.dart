import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:places/providers/settings.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({ Key? key }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Настройки',
          style: Theme.of(context).primaryTextTheme.headline6,
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 18),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        color: Colors.grey,
                        width: 0.8
                    ),
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Тёмная тема'),
                    Consumer<SettingsModel>(
                      builder: (context, settings, child) {
                        return CupertinoSwitch(
                            value: settings.appTheme == ThemeMode.dark,
                            onChanged: (bool value) {
                              setState(() {
                                settings.appTheme = value == true ? ThemeMode.dark : ThemeMode.light;
                              });
                            }
                        );
                      },
                    )

                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 18),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        color: Colors.grey,
                        width: 0.8
                    ),
                  )
                ),
                child: Row(
                  children: [
                    Text('Смотреть туториал')
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}