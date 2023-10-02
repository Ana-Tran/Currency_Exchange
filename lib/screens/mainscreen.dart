import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);
  static const id = "main_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Convert'),
      ),
      body: SafeArea(
        child: Row(
          children: [
            Column(
              children: [],
            )
          ],
        ),
      ),
    );
  }
}
