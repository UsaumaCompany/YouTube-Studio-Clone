// Ahmadjon Safarov Usauma Company
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled4/app_route.dart';
import 'package:untitled4/assets/colors/colors.dart';
import 'package:untitled4/assets/constants/icons.dart';
import 'package:untitled4/assets/constants/images.dart';
import 'package:untitled4/assets/themes/theme.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({super.key});
// Ahmadjon Safarov Usauma Company
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80.h,
      color: dark,
      // Ahmadjon Safarov Usauma Company
      child: Padding(
        padding:  EdgeInsets.only(top: 27.h,bottom: 10.h,right: 17.w,left: 17.w),
        child: Row(
          children: [
            SvgPicture.asset(AppIcons.youtube),
            5.horizontalSpace,
            Text('Studio',style: AppTheme.displayLarge.copyWith(color: white),),
            Spacer(),
            SvgPicture.asset(AppIcons.add_circle,fit: BoxFit.cover,),
            10.horizontalSpace,
            SvgPicture.asset(AppIcons.notification_bell,fit: BoxFit.cover,),
            10.horizontalSpace,
            /// Ahmadjon Safarov Usauma Company
            GestureDetector(
              onTap: (){
                AppRoute.goChannelData(context);
              },
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(AppImages.company_logo),
                    fit: BoxFit.cover,
                  )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// Ahmadjon Safarov Usauma Company