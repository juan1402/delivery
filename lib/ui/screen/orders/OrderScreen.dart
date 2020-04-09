import 'package:delivery/core/config/Resources.dart';
import 'package:delivery/core/config/SourceColors.dart';
import 'package:delivery/ui/screen/orders/tabs/HistoricalScreen.dart';
import 'package:delivery/ui/screen/orders/tabs/activeorders/ActiveOrderScreen.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  @override
  _OrdersScreenState createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrderScreen>
    with TickerProviderStateMixin {
  final _tabs = [ActiveOrderScreen(), HistoricalScreen()];
  TabController controller;

  @override
  void initState() {
    controller = TabController(length: _tabs.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: SourceColors.appBarColor,
          flexibleSpace: TabBar(
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            labelColor: SourceColors.primaryColor,
            controller: controller,
            tabs: [
              Tab(text: Resources.activeOrders),
              Tab(text: Resources.historyOrders)
            ],
          ),
        ),
        body: TabBarView(
          controller: controller,
          children: [..._tabs],
        ));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
