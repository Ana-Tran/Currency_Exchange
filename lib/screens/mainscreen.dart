import 'package:flutter/material.dart';
import 'package:currency_exchange/currency_data.dart';
import 'package:currency_exchange/custom_widgets/custom_container.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  static const id = "main_screen";

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String selectedCurrency = 'USD';

  DropdownButton createDropDown() {
    List<DropdownMenuItem<String>> menuItems = [];
    for (String currency in currencyList) {
      var newItems = DropdownMenuItem(child: Text(currency), value: currency);
      menuItems.add(newItems);
    }
    return DropdownButton<String>(
        value: selectedCurrency,
        items: menuItems,
        onChanged: (value) {
          setState(() {
            selectedCurrency = value!;
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Convert'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildContainer(createDropDown()),
        ],
      ),
    );
  }
}
