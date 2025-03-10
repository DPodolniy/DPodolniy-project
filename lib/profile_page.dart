import 'package:flutter/material.dart';
import 'package:untitled/widgets/navigation_panel.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('Профиль'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Переход в настройки
              Navigator.pushReplacementNamed(context, '/settings');
            },
          ),
        ],
      ),
      body: NavigationPanel(
        title: '',
        body: Center(
          child: Text('Профиль'),
        ),
      ),
    );
  }
}
