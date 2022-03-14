import 'package:fl_components/model/model.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes{
  static const initialRoute='home';
  // TODO:: BORRAR HOME
  static final menuOptions = <MenuOptions>[
    MenuOptions(route: 'home', name: 'Home Screen', screen: const HomeScreen(),icon: Icons.home_outlined),
    MenuOptions(route: 'listView1', name: 'List view 1', screen: const ListView1Screen(),icon: Icons.list_alt),
    MenuOptions(route: 'listView2', name: 'List view 2', screen: const ListView2Screen(),icon: Icons.list_outlined),
    MenuOptions(route: 'alert', name: 'Alert Screen', screen: const AlertScreen(),icon: Icons.warning),
    MenuOptions(route: 'card', name: 'Card Screen', screen: const CardScreen(),icon: Icons.credit_card)
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){

      Map<String, Widget Function(BuildContext)> appRoutes ={};
      for (var option in menuOptions) {
        appRoutes.addAll({option.route: (BuildContext context)=>option.screen});
      }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home':(context) => const HomeScreen(),
  //   'listView1':(context) => const ListView1Screen(),
  //   'listView2':(context) => const ListView2Screen(),
  //   'alert':(context) => const AlertScreen(),
  //   'card':(context) => const CardScreen(),
  // };
  static Route<dynamic> onGenerateRoute (RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const ListView1Screen()
    );
  }
}