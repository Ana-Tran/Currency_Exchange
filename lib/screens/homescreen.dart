import 'package:currency_exchange/constants.dart';
import 'package:flutter/material.dart';
import 'mainscreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String id = 'home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Currency Converter',
                    style: kHomePageTextStyle,
                  ),
                  kHomeScreenSizedBox,
                  const Image(
                    image: AssetImage('images/financialStock.png'),
                  ),
                  kHomeScreenSizedBox,
                  TextButton(
                    child: const Text(
                      'Enter',
                      style: kHomePageSmallTextStyle,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, MainScreen.id);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
