import 'package:flutter/material.dart';

class Transactions {
  String name;
  Icon icon;
  double amount;
  String location;
  Color color;

  Transactions({this.name, this.location, this.amount, this.icon, this.color});
}

List<Transactions> list = [
  Transactions(
      amount: 12.00,
      icon: Icon(Icons.shopping_basket, color: Colors.yellow),
      name: 'Grocery',
      location: 'Staten Island'),
  Transactions(
      amount: 24.00,
      icon: Icon(Icons.data_usage, color: Colors.blue),
      name: 'Petrol',
      location: 'Staten Island'),
  Transactions(
      amount: 105.65,
      icon: Icon(Icons.shopping_basket, color: Colors.pinkAccent),
      name: 'Shopping',
      location: 'Staten Island'),
  Transactions(
      amount: 30.02,
      icon: Icon(Icons.shopping_basket, color: Colors.red),
      name: 'Computer Hradware',
      location: 'New york City'),
];
