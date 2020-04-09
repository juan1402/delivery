import 'package:delivery/core/config/SourceColors.dart';
import 'package:delivery/ui/base/BaseWidget.dart';
import 'package:delivery/ui/widget/OrderListItem.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ActiveOrdersViewModel.dart';

class ActiveOrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => BaseWidget<ActiveOrdersViewModel>(
        model: ActiveOrdersViewModel(api: Provider.of(context)),
        child: Center(child: CircularProgressIndicator()),
        onModelReady: (model) => model.getActiveOrders(),
        builder: (context, model, child) => model.isLoading
            ? child
            : ListView.separated(
                itemCount: model.orders.length,
                itemBuilder: (context, index) =>
                    OrderListItem(item: model.orders[index]),
                separatorBuilder: (context, index) => Divider(
                      color: SourceColors.accentColor,
                    )),
      );
}
