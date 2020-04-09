import 'package:delivery/core/model/Service.dart';
import 'package:delivery/core/remote/Api.dart';
import 'package:delivery/ui/base/BaseViewModel.dart';
import 'package:flutter/material.dart';

class ServiceViewModel extends BaseViewModel {
  ServiceViewModel({@required this.api});
  List<Service> services;
  final Api api;

  Future getActiveServices() async {
    setLoading(true);
    services = await api.getActiveServices();
    setLoading(false);
  }
}