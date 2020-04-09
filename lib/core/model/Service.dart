import 'package:flutter/cupertino.dart';

class Service {
  const Service({
    @required this.serviceName,
    @required this.thumbnail,
    this.establishments
  });

  final String serviceName;
  final int establishments;
  final String thumbnail;
}
