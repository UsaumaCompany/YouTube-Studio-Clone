// Ahmadjon Safarov Usauma Company
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled4/assets/constants/icons.dart';
import 'package:untitled4/assets/themes/theme.dart';

import '../../../../assets/colors/colors.dart';

class LatestVideos extends StatelessWidget {
  const LatestVideos({super.key});
// Ahmadjon Safarov Usauma Company
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const ClampingScrollPhysics(),
        padding: EdgeInsets.all(0),
        shrinkWrap: true,
        itemCount: 4,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color: grey_dark,
              ),
              width: double.infinity,
              height: 119.h,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                        10.horizontalSpace,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                width: 200.w,
                                child: Text("Flutterda klaviaturani yo'q qilish | Flutter o'zbek tilida",maxLines: 1,overflow: TextOverflow.ellipsis,style: AppTheme.displayMedium.copyWith(fontSize: 15,color: white_dark),)),
                            Text('Dastlabki 16 kun 14 soat',style: AppTheme.displayMedium.copyWith(fontSize: 13,color: white_text,fontWeight: FontWeight.w400),),
                          ],
                        ),
                      ],
                    ),
                    // Ahmadjon Safarov Usauma Company
                    5.verticalSpace,
                    Divider(color: white,height: 8,),
                    5.verticalSpace,
                    // Ahmadjon Safarov Usauma Company
                    Row(
                      children: [
                        SvgPicture.asset(AppIcons.analytics),
                        10.horizontalSpace,
                        Text('97',style: AppTheme.displayMedium.copyWith(fontSize: 15,color: white),),
                        15.horizontalSpace,
                        SvgPicture.asset(AppIcons.like),
                        10.horizontalSpace,
                        Text('13',style: AppTheme.displayMedium.copyWith(fontSize: 15,color: white),),
                        15.horizontalSpace,
                        SvgPicture.asset(AppIcons.comments),
                        10.horizontalSpace,
                        Text('3',style: AppTheme.displayMedium.copyWith(fontSize: 15,color: white),),
                      ],
                    ),
                    // Ahmadjon Safarov Usauma Company
                  ],
                ),
              ),
            ),
          );
        });
  }
}
// Ahmadjon Safarov Usauma Company