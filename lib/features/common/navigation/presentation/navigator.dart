// // import 'package:flutter/cupertino.dart';
// // // import 'package:hale_farm/features/category/presentation/views/category_view.dart';
// // import 'package:hale_farm/features/common/view/error.dart';
// // // import 'package:hale_farm/features/common/view/qr_code.dart';

// // class TabNavigatorRoutes {
// //   static const String root = '/';
// // }

// class TabNavigator extends StatefulWidget {
//   final GlobalKey<NavigatorState> navigatorKey;
//   final NavItemEnum tabItem;

//   const TabNavigator(
//       {required this.tabItem, required this.navigatorKey, Key? key})
//       : super(key: key);

//   @override
//   State<TabNavigator> createState() => _TabNavigatorState();
// }

// class _TabNavigatorState extends State<TabNavigator>
//     with AutomaticKeepAliveClientMixin {
//   Map<String, WidgetBuilder> _routeBuilders(
//       {required BuildContext context, required RouteSettings routeSettings}) {
//     switch (widget.tabItem) {
//       case NavItemEnum.orders:
//         return {
//           TabNavigatorRoutes.root: (context) => const OrdersMainView(),
//         };
//       case NavItemEnum.goods:
//         return {
//           TabNavigatorRoutes.root: (context) => const GoodsView(),
//         };
//       case NavItemEnum.kassa:
//         return {
//           TabNavigatorRoutes.root: (context) => const KassaMain(),
//         };
//       case NavItemEnum.specialists:
//         return {
//           TabNavigatorRoutes.root: (context) => const SpecialistsView(),
//         };
//       default:
//         return {
//           TabNavigatorRoutes.root: (context) => const ErrorScreen(),
//         };
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     super.build(context);
//     return Navigator(
//       key: widget.navigatorKey,
//       initialRoute: TabNavigatorRoutes.root,
//       onGenerateRoute: (routeSettings) {
//         final routeBuilders =
//             _routeBuilders(context: context, routeSettings: routeSettings);
//         return CupertinoPageRoute(
//           builder: (context) => routeBuilders.containsKey(routeSettings.name)
//               ? routeBuilders[routeSettings.name]!(context)
//               : Container(),
//         );
//       },
//     );
//   }

//   @override
//   bool get wantKeepAlive => true;
// }

// import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

PageRouteBuilder fade({required Widget page, RouteSettings? settings}) =>
    PageRouteBuilder(
      transitionDuration: const Duration(milliseconds: 200),
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          FadeTransition(
        opacity: CurvedAnimation(
          curve: const Interval(0, 1, curve: Curves.linear),
          parent: animation,
        ),
        child: child,
      ),
      settings: settings,
      pageBuilder: (context, animation, secondaryAnimation) => page,
    );
