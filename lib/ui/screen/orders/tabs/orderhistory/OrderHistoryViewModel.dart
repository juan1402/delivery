import 'package:delivery/core/model/Order.dart';
import 'package:delivery/core/remote/Api.dart';
import 'package:delivery/ui/base/BaseViewModel.dart';
import 'package:flutter/material.dart';

class OrderHistoryViewModel extends BaseViewModel {
  OrderHistoryViewModel({@required this.api});
  List<Order> orders;
  final Api api;

  Future getOrdersHistory() async {
    setLoading(true);
    orders = await api.getOrdersHistory();
    setLoading(false);
  }
}