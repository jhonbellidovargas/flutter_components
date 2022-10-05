import 'package:flutter/material.dart';

import '../models/models.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOptions>[
    // const MenuOptions(
    //   route: 'home',
    //   name: 'Home Screen',
    //   screen: HomeScreen(),
    //   icon: Icons.home,
    // ),
    const MenuOptions(
        route: 'listview1',
        name: 'ListView 1',
        screen: ListView1Screen(),
        icon: Icons.list),
    const MenuOptions(
        route: 'listview2',
        name: 'ListView 2',
        screen: ListView2Screen(),
        icon: Icons.list),
    const MenuOptions(
        route: 'alert',
        name: 'Alert Screen',
        screen: AlertScreen(),
        icon: Icons.warning),
    const MenuOptions(
        route: 'card',
        name: 'Card Screen',
        screen: CardScreen(),
        icon: Icons.credit_card),
    const MenuOptions(
        route: 'avatar',
        name: 'Avatar Screen',
        screen: AvatarScreen(),
        icon: Icons.person),
    const MenuOptions(
        route: 'animated',
        name: 'Animated Screen',
        screen: AnimatedScreen(),
        icon: Icons.animation),
    const MenuOptions(
        route: 'inputs',
        name: 'Inputs Screen',
        screen: InputsScreen(),
        icon: Icons.input),
    const MenuOptions(
        route: 'slider',
        name: 'Slider Screen',
        screen: SliderScreen(),
        icon: Icons.slideshow),
    const MenuOptions(
        route: 'listview_builder',
        name: 'Infinite Scroll y Pull to Refresh',
        screen: ListViewBuilderScreen(),
        icon: Icons.list),
  ];

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const ListView1Screen(),
  //   'listview2': (BuildContext context) => const ListView2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
