import 'package:flutter/material.dart';
class PriceList extends StatelessWidget {
  PriceList({this.text});
  final text;


  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
      padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
      child: Text(text,style:TextStyle(
          fontSize: 20,
          color: Colors.grey
      )),
    );
  }
}
