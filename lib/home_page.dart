import 'package:flutter/material.dart';
import 'package:untitled/widgets/navigation_panel.dart';

class HomePage extends StatelessWidget {
  // final VoidCallback toggleTheme;

  // HomePage({required this.toggleTheme});
  @override
  Widget build(BuildContext context) {
    return NavigationPanel(
        title: 'Домашняя страница',
        body: Center(
          child: Text("Добро пожаловать в приложение!"),
        ));
  }
}