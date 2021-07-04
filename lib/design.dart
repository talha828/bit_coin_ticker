import 'dart:convert';

import 'package:bitcoin_ticker_flutter/priceList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'coinData.dart';
import 'package:http/http.dart'as http;
class Design extends StatefulWidget {

  @override
  _DesignState createState() => _DesignState();
}

class _DesignState extends State<Design> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }
  double rate;
int display;
  int display2;
  int display3;
  int display4;
  int display5;
  String usd="BTC";
  String bitcoin= "USD";
  String apikey="E7F76445-B882-4EB0-9184-BEA87CB0B9BF";
  Future getdata() async {
    http.Response response = await http.get(Uri.parse(
        "https://rest.coinapi.io/v1/exchangerate/$usd/USD?apikey=$apikey"));
    String data = response.body;
    setState(() {
      rate = (jsonDecode(data)["rate"]);
      display = rate.toInt();
    });
    http.Response response2 = await http.get(Uri.parse(
        "https://rest.coinapi.io/v1/exchangerate/$usd/EUR?apikey=$apikey"));
    String data2 = response2.body;
    setState(() {
      rate = (jsonDecode(data2)["rate"]);
      display2 = rate.toInt();
    });
    http.Response response3 = await http.get(Uri.parse(
        "https://rest.coinapi.io/v1/exchangerate/$usd/IDR?apikey=$apikey"));
    String data3 = response3.body;
    setState(() {
      rate = (jsonDecode(data3)["rate"]);
      display3 = rate.toInt();
    });
    http.Response response4 = await http.get(Uri.parse(
        "https://rest.coinapi.io/v1/exchangerate/$usd/INR?apikey=$apikey"));
    String data4 = response4.body;
    setState(() {
      rate = (jsonDecode(data4)["rate"]);
      display4 = rate.toInt();
    });
    http.Response response5 = await http.get(Uri.parse(
        "https://rest.coinapi.io/v1/exchangerate/$usd/RUB?apikey=$apikey"));
    String data5 = response5.body;
    setState(() {
      rate = (jsonDecode(data5)["rate"]);
      display5 = rate.toInt();
    });
  }
  Widget build(BuildContext context) {
    return Column(
        children:[
      Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey,
        height: MediaQuery.of(context).size.height/3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("1 $usd",style:TextStyle(
              fontSize: 20,
              color: Colors.white
            ) ,),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children:[ Text("$display",style: KtopTextStyle),
            Text("$bitcoin",style:KusdTextStyle)
            ]),
            DropdownButton(
              icon: Icon(Icons.money),
              focusColor: Colors.white,
              items: cryptoList.map((String item) => DropdownMenuItem<String>(child: Text(item), value: item)).toList(),
              onChanged: (value) {
                setState(() {
                  this.usd = value;
                });
                getdata();
              },
              value: usd,
            ),
          ],
        ),
      ),
          SizedBox(height: 20,),
          PriceList(text:"1 $usd = $display2 " + currenciesList[0] ),
          PriceList(text:"1 $usd = $display3 " + currenciesList[1] ),
          PriceList(text:"1 $usd = $display4 " + currenciesList[2] ),
          PriceList(text:"1 $usd = $display5 " + currenciesList[3] ),
          PriceList(text:"1 $usd = $display " + currenciesList[4] ),
        ]
    );
  }
}


