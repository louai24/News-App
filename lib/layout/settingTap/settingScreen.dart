import 'package:flutter/material.dart';

import '../../color_manager.dart';

class SettingScreen extends StatelessWidget {
  static const String routeName = 'setting Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text("Settings"), centerTitle: true,
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              children: [
              Container(height: 150,
                color: Theme.of(context).colorScheme.primary,
                child: Text("Theme Mode", style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
                  fontSize: 20
                ),
                ),
              )
            ],),
          )
        ],
      ),
    );
  }
}
