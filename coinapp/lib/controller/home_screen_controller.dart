import 'package:coinapp/requests/currency_api.dart';
import 'package:flutter/material.dart';

class HomeScreenController extends ChangeNotifier {
  String? btc;
  String? ltc;
  String? eth;

  Map<String, String> currency = {
    "BTC": "0",
    "LTC": "0",
    "ETH": "0",
  };

  String selectedCurrency = "AUD";

  List<String> currenciesList = [
    'AUD',
    'BRL',
    'CAD',
    'CNY',
    'EUR',
    'GBP',
    'HKD',
    'IDR',
    'ILS',
    'INR',
    'JPY',
    'MXN',
    'NOK',
    'NZD',
    'PLN',
    'RON',
    'RUB',
    'SEK',
    'SGD',
    'USD',
    'ZAR'
  ];

  List<String> cryptoList = ['BTC', 'ETH', 'LTC'];

  Future<void> fetchData() async {
    for (var crypto in cryptoList) {
      var data = await CurrencyApi()
          .fetchData(crypto: crypto, currency: selectedCurrency);

      currency[crypto] = data["rate"].toStringAsFixed(2);
    }
    notifyListeners();
  }
}
