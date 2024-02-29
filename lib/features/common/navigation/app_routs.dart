import 'package:go_router/go_router.dart';

import '../view/error.dart';

class AppRouts {
  static GoRouter router = GoRouter(
    errorBuilder: (context, state) => ErrorScreen(error: state.error?.message),
    routes: <GoRoute>[
      // GoRoute(
      //   path: MainView.route,
      //   builder: (BuildContext context, GoRouterState state) =>
      //       const MainView(),
      //   routes: const [
      // ShellRoute(
      //   builder: (context, state, child) => const MainView(),
      //   routes: const [
      /// FOR SAMPLE
      // GoRoute(
      //   path: MainView.route,
      //   pageBuilder: (context, state) => customTransitionPage(
      //     context: context,
      //     state: state,
      //     child: const MainView(),
      //   ),
      // ),
      //   ],
      // ),
      // ShellRoute(
      //   builder: (context, state, child) => MainView(child: child),
      //   routes: [
      //     GoRoute(
      //       name: RoutsContact.client,
      //       path: 'client',
      //       pageBuilder: (context, state) => customTransitionPage(
      //           context: context, state: state, child: const ClientView()),
      //     ),
      //     GoRoute(
      //       name: RoutsContact.category,
      //       path: 'category',
      //       pageBuilder: (context, state) => customTransitionPage(
      //           context: context,
      //           state: state,
      //           child: const CategoryView()),
      //     ),
      //     GoRoute(
      //       name: RoutsContact.specialists,
      //       path: 'specialists',
      //       pageBuilder: (context, state) => customTransitionPage(
      //           context: context,
      //           state: state,
      //           child: const SpecialistsView()),
      //     ),
      //     GoRoute(
      //       name: RoutsContact.ordersMain,
      //       path: 'ordersMain',
      //       pageBuilder: (context, state) => customTransitionPage(
      //           context: context,
      //           state: state,
      //           child: const OrdersMainView()),
      //     ),
      //   ],
      // ),
      // GoRoute(
      //   name: RoutsContact.login,
      //   path: 'login',
      //   pageBuilder: (context, state) => customTransitionPage(
      //       context: context, state: state, child: const AuthMainView()),
      // ),
      //   ],
      // ),
    ],
  );
}
