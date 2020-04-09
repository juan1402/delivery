import 'package:delivery/core/config/Resources.dart';
import 'package:delivery/core/config/SourceColors.dart';
import 'package:delivery/core/model/Order.dart';
import 'package:delivery/ui/utils/UiHelper.dart';
import 'package:flutter/material.dart';

class OrderListItem extends StatelessWidget {
  OrderListItem({@required this.item});

  final Order item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                  width: 40,
                  height: 40,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                          fit: BoxFit.contain,
                          image: new NetworkImage(item.thumbnail)))),
              UIHelper.horizontalSpaceSmall,
              Text(item.orderSource,
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                      color: SourceColors.primaryColor))
            ],
          ),
          UIHelper.verticalSpaceSmall,
          Align(
              child: Text(
                Resources.orderNumber(item.orderNumber),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: SourceColors.primaryColor),
              ),
              alignment: Alignment.centerLeft),
          UIHelper.verticalSpaceSmall,
          Align(
              child: Text(item.createdAt.toIso8601String()),
              alignment: Alignment.centerLeft),
          UIHelper.verticalSpaceSmall,
          Align(
              child: Text(Resources.toLocalCurrency(item.price)),
              alignment: Alignment.centerLeft)
        ],
      ),
    );
  }
}
