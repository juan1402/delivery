import 'package:delivery/core/config/Resources.dart';
import 'package:delivery/core/config/SourceColors.dart';
import 'package:delivery/core/model/Service.dart';
import 'package:delivery/ui/utils/UiHelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  ServiceCard(this._service);

  final Service _service;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: SourceColors.cardBackground,
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Image.network(
                    _service.thumbnail,
                    width: 120,
                    height: 120,
                  ),
                ),
              ),
              UIHelper.verticalSpaceLarge,
              Align(
                child: Text(
                  _service.serviceName,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: SourceColors.primaryColor),
                ),
                alignment: Alignment.centerLeft,
              ),
              Align(
                child: Text(
                  Resources.pluralizeEstablishments(_service.establishments),
                  style: TextStyle(fontSize: 12),
                ),
                alignment: Alignment.centerLeft,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
