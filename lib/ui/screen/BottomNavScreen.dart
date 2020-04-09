import 'package:delivery/core/config/Resources.dart';
import 'package:delivery/core/config/SourceColors.dart';
import 'package:delivery/ui/screen/orders/OrderScreen.dart';
import 'package:delivery/ui/screen/service/ServiceScreen.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  var _currentIndex = 0;

  final _screens = [ServiceScreen(), OrderScreen(), ServiceScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: SourceColors.appBarColor,
        title: Text(
          Resources.applicationTitle,
          style: TextStyle(
              color: SourceColors.primaryColor, fontWeight: FontWeight.w900),
        ),
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (position) => setState(() {
          _currentIndex = position;
        }),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.local_grocery_store),
            title: Text(Resources.serviceScreenTitle),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            title: Text(Resources.ordersScreenTitle),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.verified_user),
            title: Text(Resources.profileScreenTitle),
          )
        ],
      ),
    );
  }
}
