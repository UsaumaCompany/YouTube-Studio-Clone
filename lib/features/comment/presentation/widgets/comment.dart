import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled4/assets/colors/colors.dart';
import 'package:untitled4/assets/constants/icons.dart';
import 'package:untitled4/assets/constants/images.dart';
import 'package:untitled4/assets/themes/theme.dart';

class Comment extends StatelessWidget {
  const Comment({super.key});
  /// Ahmadjon Safarov Usauma Company

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 275.w,
                height: 44,
                child: Text("Flutterda klaviaturani yo'q qilish Flutter o'zbek tilida",style: AppTheme.headlineSmall.copyWith(color: white),)),
            20.horizontalSpace,
            /// Ahmadjon Safarov Usauma Company
            Container(
              width: 74,
              height: 44,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  image: DecorationImage(
                    image: NetworkImage('https://i.ytimg.com/vi/IMWI0B2n6yk/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLAWITkbDlD457IfoF5Iyb3cpJRLKQ'),
                    fit: BoxFit.cover,
                  )
              ),
            ),
          ],
        ),
        10.verticalSpace,
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(AppImages.company_logo),
            ),
            15.horizontalSpace,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('@usauma • 13-kun oldin',style: AppTheme.labelSmaller.copyWith(fontWeight: FontWeight.w400,color: text_color)),
                5.verticalSpace,
                Text('Komment',style: AppTheme.displaySmall.copyWith(fontSize: 15,color: white),),
                5.verticalSpace,
                Text('BU tilga tarjima qilish: o\'zbek',style: AppTheme.labelSmaller.copyWith(fontWeight: FontWeight.w400,color: text_color)),
                25.verticalSpace,
                Row(
                  children: [
                    SvgPicture.asset(AppIcons.like),
                    25.horizontalSpace,
                    SvgPicture.asset(AppIcons.dislike),
                    25.horizontalSpace,
                    SvgPicture.asset(AppIcons.comments),
                    25.horizontalSpace,
                    SizedBox(
                        width: 19,
                        height: 19,
                        child: SvgPicture.asset(AppIcons.heart)),
                    150.horizontalSpace,
                    Icon(Icons.more_vert,color: white,),
                  ],
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
/// Ahmadjon Safarov Usauma Company
