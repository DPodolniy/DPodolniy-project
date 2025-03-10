import 'package:flutter/material.dart';
import 'package:untitled/home_page.dart';
import 'package:untitled/login.dart';
import 'package:untitled/profile_page.dart';
import 'package:untitled/rations_page.dart';
import 'package:untitled/register_page.dart';
import 'package:untitled/settings.dart';
import 'package:untitled/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();

  static _MyAppState of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyAppInherited>()!.data;
  }
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.system;

  void changeTheme(ThemeMode mode) {
    setState(() {
      _themeMode = mode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MyAppInherited(
      data: this,
      child: MaterialApp(
        title: 'untitled',
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: _themeMode,
        initialRoute: '/home',
        routes: {
          '/login': (context) => LoginPage(),
          '/register': (context) => RegisterPage(),
          '/home': (context) => HomePage(),
          '/settings': (context) => SettingsPage(),
          '/profile': (context) => ProfilePage(),
          '/rations': (context) => RationsPage(),
        },
      ),
    );
  }
}

class MyAppInherited extends InheritedWidget {
  final _MyAppState data;

  MyAppInherited({required this.data, required Widget child})
      : super(child: child);

  @override
  bool updateShouldNotify(MyAppInherited old) => true;
}
