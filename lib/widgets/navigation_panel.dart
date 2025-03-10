import 'package:flutter/material.dart';

class NavigationPanel extends StatelessWidget {
  final String title;
  final Widget body;

  NavigationPanel({required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(title, style: TextStyle(color: Theme.of(context).colorScheme.secondary),),
      ),
      body: body,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/home');
              },
              child: Icon(Icons.home, color: Theme.of(context).iconTheme.color),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/rations');
              },
              child: Icon(Icons.restaurant, color: Theme.of(context).iconTheme.color),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/workout_diary');
              },
              child: Icon(Icons.fitness_center, color: Theme.of(context).iconTheme.color),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/profile');
              },
              child: Icon(Icons.person, color: Theme.of(context).iconTheme.color),
            ),
          ],
        ),
      ),
    );
  }
}
