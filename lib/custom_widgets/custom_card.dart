import 'package:flutter/material.dart';
import 'package:currency_exchange/constants.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.value,
    required this.selectedCurrency,
    required this.currencyText,
    required this.countryImage,
  });

  final String value;
  final String currencyText;
  final String selectedCurrency;
  final String countryImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Color.fromARGB(255, 249, 243, 255),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                foregroundImage: AssetImage(countryImage),
              ),
              Text(
                '1 $currencyText = $value $selectedCurrency',
                style: kMainCardTxtStyle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
