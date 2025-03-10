import 'package:flutter/material.dart';
import 'package:untitled/login.dart';
import 'package:untitled/main.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}


class _SettingsPageState extends State<SettingsPage> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: IconButton(onPressed: () {
          Navigator.pushReplacementNamed(context, '/profile');
        }, icon: Icon(Icons.arrow_back)),
        title: Text('Настройки'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              // Переход на страницу входа
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
                    (Route<dynamic> route) => false, // Убираем все предыдущие страницы
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [SwitchListTile(
            title: Text('Темная тема'),
            value: isDarkMode,
            onChanged: (value) {
          setState(() {
            isDarkMode = value;
            ThemeMode mode = isDarkMode ? ThemeMode.dark : ThemeMode.light;
            MyApp.of(context)?.changeTheme(mode);
          });
        }),]
      )
    );
  }
}
