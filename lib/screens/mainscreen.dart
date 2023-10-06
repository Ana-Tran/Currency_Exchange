import 'package:flutter/material.dart';
import 'package:currency_exchange/currency_data.dart';
import 'package:currency_exchange/custom_widgets/custom_container.dart';
import 'package:currency_exchange/constants.dart';
import 'package:currency_exchange/custom_widgets/custom_card.dart';
import 'package:currency_exchange/countryImage.dart';

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
      var newItems = DropdownMenuItem(value: currency, child: Text(currency));
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

  List<CustomCard> createCards() {
    List<CustomCard> newCards = [];
    for (int i = 0; i < currencyCardList.length; i++) {
      newCards.add(
        CustomCard(
            countryImage: getCountryImages[i],
            value: '1.5',
            selectedCurrency: selectedCurrency,
            currencyText: currencyCardList[i]),
      );
    }
    return newCards;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Convert'),
      ),
      body: Column(
        children: [
          buildContainer(createDropDown()),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8.0, top: 10.0),
                  child: Text(
                    'Today\'s Rates',
                    style: kMainScreenTxtStyle,
                  ),
                ),
                ...createCards(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
