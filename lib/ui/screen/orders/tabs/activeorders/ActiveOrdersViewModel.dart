import 'package:delivery/core/model/Order.dart';
import 'package:delivery/core/remote/Api.dart';
import 'package:delivery/ui/base/BaseViewModel.dart';
import 'package:flutter/material.dart';

class ActiveOrdersViewModel extends BaseViewModel {
  ActiveOrdersViewModel({@required this.api});
  List<Order> orders;
  final Api api;

  Future getActiveOrders() async {
    setLoading(true);
    orders = await api.getActiveOrders();
    setLoading(false);
  }
}