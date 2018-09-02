import 'package:flutter/material.dart';
import './ui/get_money.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'phetsarath_ot'),
    title: 'Make It Rain',
    home: GetMoney(),
  ));
}