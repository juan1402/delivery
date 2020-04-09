import 'package:flutter/material.dart';

class Order {
  const Order(
      {@required this.createdAt,
      @required this.orderNumber,
      @required this.orderSource,
      @required this.price,
      @required this.thumbnail});

  final String thumbnail;
  final DateTime createdAt;
  final int orderNumber;
  final String orderSource;
  final double price;
}
