import 'package:flutter/material.dart';
import 'package:untitled/widgets/navigation_panel.dart';

class RationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NavigationPanel(
        title: 'Рацион',
        body: Center(
          child: Text('Здесь будет рацион'),
        )
    );
  }
}
