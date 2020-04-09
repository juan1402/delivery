class Resources {
  // APP TITLE

  static const String applicationTitle = "Delivery TBD";

  // BOTTOM NAV BAR

  static const String serviceScreenTitle = "Services";
  static const String profileScreenTitle = "Profile";
  static const String ordersScreenTitle = "Orders";

  // SERVICE SCREEN

  static pluralizeEstablishments(int amount) =>
      amount == 1 ? "$amount $establishment" : "$amount $establishments";

  static const String establishments = "establishments";
  static const String establishment = "establishments";

  //ORDERS

  static toLocalCurrency(double amount) => "\$$amount";

  static orderNumber(int number) => "$_order$number";

  static const String _order = "ORDER: HO-";

  static const String historyOrders = "HISTORY";
  static const String activeOrders = "ACTIVE";
}
