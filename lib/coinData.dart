import 'package:flutter/material.dart';
const List<String> currenciesList = [

  'EUR',
  'IDR',
  'INR',
  'RUB',
  'USD',

];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';
const apiKey = 'YOUR-API-KEY-HERE';
const topTextStyle=TextStyle(
    color:Colors.white,
    fontSize: 25
);
const KtopTextStyle=TextStyle(
    color:Colors.white,
    fontSize: 60,
    fontWeight: FontWeight.bold,
);
const KusdTextStyle=TextStyle(
  color:Colors.white,
  fontSize: 40,
  fontWeight: FontWeight.normal,

);