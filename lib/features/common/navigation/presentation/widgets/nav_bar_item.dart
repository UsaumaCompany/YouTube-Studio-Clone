// import 'package:elituvchicourer/assets/colors/color.dart';
// import 'package:elituvchicourer/core/utils/colors.dart';
// import 'package:elituvchicourer/features/common/navigation/entities/navbar.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class NavItemWidget extends StatelessWidget {
//   final int currentIndex;
//   final NavBar navBar;

//   const NavItemWidget({
//     required this.navBar,
//     required this.currentIndex,
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) => Container(
//         margin: const EdgeInsets.only(bottom: 4),
//         width: double.maxFinite,
//         child: Column(
//           children: [
//             Center(
//               child: currentIndex == navBar.id
//                   ? Padding(
//                       padding: const EdgeInsets.only(top: 12),
//                       child: SvgPicture.asset(
//                         navBar.icon,
//                         height: 24,
//                         width: 24,
//                         color: white,
//                       ),
//                     )
//                   : Padding(
//                       padding: const EdgeInsets.only(top: 12),
//                       child: SvgPicture.asset(
//                         navBar.outlinedIcon,
//                         height: 24,
//                         width: 24,
//                         color: MyColors.navbarBlack,
//                       ),
//                     ),
//             ),
//             const SizedBox(
//               height: 4,
//             ),
//             Container(
//               alignment: Alignment.bottomCenter,
//               child: Text(
//                 navBar.title,
//                 overflow: TextOverflow.ellipsis,
//                 textAlign: TextAlign.center,
//                 maxLines: 1,
//                 style: Theme.of(context).textTheme.displayLarge!.copyWith(
//                       fontSize: 12,
//                       fontWeight: FontWeight.w400,
//                       color: currentIndex == navBar.id
//                           ? white
//                           : MyColors.navbarBlack,
//                     ),
//               ),
//             ),
//           ],
//         ),
//       );
// }
