import 'package:delivery/core/config/DummyData.dart';
import 'package:delivery/core/model/Order.dart';
import 'package:delivery/core/model/Service.dart';

class Api {
  final dummy = DummyData();

  Future<List<Service>> getActiveServices() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return dummy.services;
  }

  Future<List<Order>> getActiveOrders() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return dummy.activeOrders;
  }

  Future<List<Order>> getOrdersHistory() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return dummy.ordersHistory;
  }
}
