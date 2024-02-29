// import 'package:hale_farm/assets/constants/icons.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:hale_farm/features/common/navigation/entities/navbar.dart';
// import 'package:hale_farm/features/common/navigation/presentation/bloc/navigator_cubit/manage_navigator_cubit.dart';
// import 'package:hale_farm/features/common/navigation/presentation/navigator.dart';

// enum NavItemEnum { orders, myorders, profile }

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   static Route route() =>
//       MaterialPageRoute<void>(builder: (_) => const HomeScreen());

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
//   late TabController _controller;

//   final Map<NavItemEnum, GlobalKey<NavigatorState>> _navigatorKeys = {
//     NavItemEnum.orders: GlobalKey<NavigatorState>(),
//     NavItemEnum.myorders: GlobalKey<NavigatorState>(),
//     NavItemEnum.profile: GlobalKey<NavigatorState>(),
//   };

//   final List<NavBar> lables = [
//     const NavBar(
//       title: 'Buyurtmalar',
//       id: 0,
//       icon: AppIcons.ordersT,
//       outlinedIcon: AppIcons.ordersT,
//     ),
//     const NavBar(
//       title: 'Buyurtmalarim',
//       id: 1,
//       icon: AppIcons.myorders,
//       outlinedIcon: AppIcons.myorders,
//     ),
//     const NavBar(
//       title: 'Profile',
//       id: 2,
//       icon: AppIcons.profile,
//       outlinedIcon: AppIcons.profile,
//     ),
//   ];

//   late ManageNavigatorCubit _manageNavigatorCubit;
//   int selectedLocation = 0;

//   @override
//   void initState() {
//     _controller = TabController(length: 3, vsync: this);
//     _controller.addListener(() {
//       onTabChange();
//       // ITS FOR UNFOUCUS SEARCH TEXTFIELD FOCUSE
//       if (_controller.indexIsChanging) {
//         FocusScope.of(context).unfocus();
//       }
//     });

//     _manageNavigatorCubit = BlocProvider.of<ManageNavigatorCubit>(context);
//     context.read<SettingsBloc>().add(SettingsEvent.getChek());
//     super.initState();
//   }

//   void onTabChange() {
//     setState(() {
//       _manageNavigatorCubit.changePage(page: _controller.index);
//       _navigatorKeys[
//               NavItemEnum.values[_manageNavigatorCubit.state.currentIndex]]
//           ?.currentState
//           ?.popUntil((route) => route.isFirst);
//     });
//   }

//   Widget _buildPageNavigator(NavItemEnum tabItem) => TabNavigator(
//         navigatorKey: _navigatorKeys[tabItem]!,
//         tabItem: tabItem,
//       );

//   void changePage(int index) {
//     _controller.animateTo(index);
//   }

//   @override
//   Widget build(BuildContext context) => HomeTabControllerProvider(
//         controller: _controller,
//         child: BlocListener<ManageNavigatorCubit, ManageNavigatorState>(
//           listener: (context, state) {
//             if (state.currentIndex != _controller.index) {
//               _controller.animateTo(state.currentIndex);
//             }
//           },
//           child: WillPopScope(
//             onWillPop: () async {
//               final isFirstRouteInCurrentTab = !await _navigatorKeys[NavItemEnum
//                       .values[_manageNavigatorCubit.state.currentIndex]]!
//                   .currentState!
//                   .maybePop();
//               if (isFirstRouteInCurrentTab) {
//                 // if (NavItemEnum
//                 //         .values[_manageNavigatorCubit.state.currentIndex] !=
//                 //     NavItemEnum.menu) {
//                 //   changePage(0);
//                 //   _manageNavigatorCubit.changePage(page: 0);
//                 //   return false;
//                 // }
//               }
//               return isFirstRouteInCurrentTab;
//             },
//             child: Scaffold(
//               resizeToAvoidBottomInset: true,
//               bottomNavigationBar: Container(
//                 height: 70 + MediaQuery.of(context).padding.bottom,
//                 decoration: BoxDecoration(
//                   borderRadius: const BorderRadius.only(
//                       topLeft: Radius.circular(15),
//                       topRight: Radius.circular(15)),
//                   color: Theme.of(context).appBarTheme.backgroundColor,
//                   boxShadow: [
//                     BoxShadow(
//                       color: const Color(0xFF171725).withOpacity(0.05),
//                       blurRadius: 24,
//                       offset: const Offset(0, -8),
//                     )
//                   ],
//                 ),
//                 child: TabBar(
//                   enableFeedback: true,
//                   onTap: (index) {},
//                   indicator: const BoxDecoration(),
//                   controller: _controller,
//                   labelPadding: EdgeInsets.zero,
//                   tabs: [
//                     GestureDetector(
//                       onDoubleTap: () => _navigatorKeys[NavItemEnum.values[
//                               _manageNavigatorCubit.state.currentIndex]]!
//                           .currentState!
//                           .popUntil((route) => route.isFirst),
//                       child: NavItemWidget(
//                         navBar: lables[0],
//                         currentIndex: _manageNavigatorCubit.state.currentIndex,
//                       ),
//                     ),
//                     GestureDetector(
//                       onDoubleTap: () => _navigatorKeys[NavItemEnum.values[
//                               _manageNavigatorCubit.state.currentIndex]]!
//                           .currentState!
//                           .popUntil((route) => route.isFirst),
//                       child: NavItemWidget(
//                         navBar: lables[1],
//                         currentIndex: _manageNavigatorCubit.state.currentIndex,
//                       ),
//                     ),
//                     GestureDetector(
//                       onDoubleTap: () => _navigatorKeys[NavItemEnum.values[
//                               _manageNavigatorCubit.state.currentIndex]]!
//                           .currentState!
//                           .popUntil((route) => route.isFirst),
//                       child: NavItemWidget(
//                         navBar: lables[2],
//                         currentIndex: _manageNavigatorCubit.state.currentIndex,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               body: TabBarView(
//                 controller: _controller,
//                 physics: const NeverScrollableScrollPhysics(),
//                 children: [
//                   _buildPageNavigator(NavItemEnum.orders),
//                   _buildPageNavigator(NavItemEnum.myorders),
//                   _buildPageNavigator(NavItemEnum.profile),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       );
// }

// class HomeTabControllerProvider extends InheritedWidget {
//   final TabController controller;

//   const HomeTabControllerProvider({
//     required Widget child,
//     required this.controller,
//     Key? key,
//   }) : super(key: key, child: child);

//   static HomeTabControllerProvider of(BuildContext context) {
//     final result =
//         context.dependOnInheritedWidgetOfExactType<HomeTabControllerProvider>();
//     assert(result != null, 'No HomeTabControllerProvider found in context');
//     return result!;
//   }

//   @override
//   bool updateShouldNotify(HomeTabControllerProvider oldWidget) => false;
// }
