import 'package:delivery/ui/base/BaseWidget.dart';
import 'package:delivery/ui/widget/ServiceCard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ServiceViewModel.dart';

class ServiceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseWidget<ServiceViewModel>(
      model: ServiceViewModel(api: Provider.of(context)),
      onModelReady: (model) => model.getActiveServices(),
      builder: (context, model, child) => model.isLoading
          ? Center(child: CircularProgressIndicator())
          : GridView.count(
              crossAxisCount: 2,
              children: List.generate(model.services.length,
                  (index) => ServiceCard(model.services[index])),
            ),
    );
  }
}
