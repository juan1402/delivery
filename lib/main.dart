import 'package:delivery/core/config/Resources.dart';
import 'package:delivery/core/config/SourceColors.dart';
import 'package:delivery/ui/screen/BottomNavScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/config/ProviderSetUp.dart';

void main() {
  runApp(DeliveryApp());
}

class DeliveryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: ProviderSetUp.providers,
      child: MaterialApp(
          title: Resources.applicationTitle,
          theme: ThemeData(
            fontFamily: "Montserrat",
            primaryColor: SourceColors.primaryColor,
            accentColor: SourceColors.accentColor
          ),
          home: BottomNavScreen()
      ),
    );
  }
}
