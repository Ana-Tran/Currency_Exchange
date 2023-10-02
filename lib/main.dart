import 'package:flutter/material.dart';
import 'constants.dart';
import 'screens/homescreen.dart';
import 'screens/mainscreen.dart';

void main() {
  runApp(const CurrencyExchange());
}

class CurrencyExchange extends StatelessWidget {
  const CurrencyExchange({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData.light().copyWith(scaffoldBackgroundColor: kMainPageColor),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => const HomeScreen(),
        MainScreen.id: (context) => const MainScreen(),
      },
    );
  }
}
