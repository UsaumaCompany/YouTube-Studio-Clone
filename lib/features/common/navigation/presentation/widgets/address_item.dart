// // ignore_for_file: must_be_immutable

// import 'package:flutter/material.dart';

// class AddressItem extends StatelessWidget {
//   AddressItem({super.key, required this.onPressed, required this.isChecked, required this.text});
//   final VoidCallback onPressed;
//   bool isChecked;
//   final String text;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onPressed,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Container(
//             padding: const EdgeInsets.all(2),
//             height: 18,
//             width: 18,
//             decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 border: Border.all(
//                     color: isChecked ? MyColors.C_18B81F : MyColors.grey,
//                     width: 2)),
//             child: Container(
//               decoration: BoxDecoration(
//                   color: isChecked ? MyColors.C_18B81F : MyColors.white,
//                   shape: BoxShape.circle),
//             ),
//           ),
//           const SizedBox(width: 10),
//           Text(
//             text,
//             style: MyTextStyle.regularPoppins.copyWith(
//               color: MyColors.black,
//               fontSize: 16,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
