import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'constants.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

const List<String> currencyList = [
  'CAD',
  'USD',
  'EUR',
  'JPY',
  'AUD',
  'GBP',
  'CNY',
  'CHF',
  'SGD'
];

const List<String> currencyCardList = ['USD', 'CAD', 'AUD'];
String? APIKey = dotenv.env['APIKey'];

class CurrencyData {
  Future getCurrencyData(String selectedCurrency) async {
    Map<String, String> currencyValues = Map();
    String url;
    for (String currency in currencyCardList) {
      url = '$kAmdorenURL?api_key=$APIKey&from=$selectedCurrency&to=$currency';
      print(url);
      http.Response response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        var decodeData = jsonDecode(response.body);
        int amt = decodeData['amount'];
        currencyValues[currency] = amt.toStringAsFixed(2);
      } else {
        print(response.statusCode);
        throw 'Problem with API request';
      }
    }
    return currencyValues;
  }
}
