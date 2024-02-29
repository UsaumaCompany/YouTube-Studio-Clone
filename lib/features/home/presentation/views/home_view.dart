// Ahmadjon Safarov Usauma Company
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled4/assets/colors/colors.dart';
import 'package:untitled4/assets/constants/icons.dart';
import 'package:untitled4/assets/constants/images.dart';
import 'package:untitled4/assets/themes/theme.dart';

import '../widgets/app_bar_home.dart';
import '../widgets/latest_videos.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}
// Ahmadjon Safarov Usauma Company
class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dark,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBarHome(),
              // Ahmadjon Safarov Usauma Company
              Divider(color: grey_dark,height: 1,),
              // Ahmadjon Safarov Usauma Company
              Container(
                width: double.infinity,
                color: dark,
                child: Padding(
                  padding: EdgeInsets.all(21),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 76.r,
                            height: 76.r,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(AppImages.company_logo),
                                fit: BoxFit.cover,
                              )
                            ),
                          ),
                          20.horizontalSpace,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('USAUMA COMPANY',style: AppTheme.displaySmall.copyWith(color: white,fontSize: 21,),),
                              2.verticalSpace,
                              Text('30',style: AppTheme.displaySmall.copyWith(color: white,fontSize: 21,),),
                              2.verticalSpace,
                              Text('Jami obunachilar',style: AppTheme.titleLarge.copyWith(color: white,fontSize: 13),),
                            ],
                          ),
                        ],
                      ),
                      20.verticalSpace,
                      Row(
                        children: [
                          Text("Kanal tahlili",style: AppTheme.bodyMedium.copyWith(fontSize: 19,fontWeight: FontWeight.w900,color: white),),
                          Spacer(),
                          Text("oxirigi 28 kun",style: AppTheme.labelSmaller.copyWith(fontWeight: FontWeight.w400,color: text_color),),
                        ],
                      ),
                      5.verticalSpace,
                      Row(
                        children: [
                          Container(
                            height: 79.h,
                            width: 160.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: grey_dark,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(15.r),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Tomoshalar',style: AppTheme.labelSmaller.copyWith(fontWeight: FontWeight.w400,color: text_color),),
                                  Row(
                                    children: [
                                      Text('153',style: AppTheme.displaySmall.copyWith(fontSize: 20,color: white),),
                                      5.horizontalSpace,
                                      SvgPicture.asset(AppIcons.growth),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 79.h,
                            width: 160.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: grey_dark,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(15.r),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Tomosha vaqti (soat)',style: AppTheme.labelSmaller.copyWith(fontWeight: FontWeight.w400,color: text_color),),
                                  Row(
                                    children: [
                                      Text('1,0',style: AppTheme.displaySmall.copyWith(fontSize: 20,color: white),),
                                      5.horizontalSpace,
                                      SvgPicture.asset(AppIcons.growth),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                          ),
                        ],
                      ),
                      10.verticalSpace,
                      Row(
                        children: [
                          Container(
                            height: 79.h,
                            width: 160.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: grey_dark,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(15.r),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Tomoshalar',style: AppTheme.labelSmaller.copyWith(fontWeight: FontWeight.w400,color: text_color),),
                                  Row(
                                    children: [
                                      Text('153',style: AppTheme.displaySmall.copyWith(fontSize: 20,color: white),),
                                      5.horizontalSpace,
                                      SvgPicture.asset(AppIcons.growth),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 79.h,
                            width: 160.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: grey_dark,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(15.r),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Tomosha vaqti (soat)',style: AppTheme.labelSmaller.copyWith(fontWeight: FontWeight.w400,color: text_color),),
                                  Row(
                                    children: [
                                      Text('1,0',style: AppTheme.displaySmall.copyWith(fontSize: 20,color: white),),
                                      5.horizontalSpace,
                                      SvgPicture.asset(AppIcons.growth),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                          ),
                        ],
                      ),
                      20.verticalSpace,
                      Text('   Oxirgi chop etilgan kontent',style: AppTheme.titleSmall.copyWith(color: white,fontSize: 19),),
                      LatestVideos(),
                      20.verticalSpace,
                      Text('   Eng so\'nggi sharhlar',style: AppTheme.titleSmall.copyWith(color: white,fontSize: 19),),
                      Padding(
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
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      width: 200.w,
                                      child: Text("Flutterda klaviaturani yo'q qilish | Flutter o'zbek tilida",maxLines: 1,overflow: TextOverflow.ellipsis,style: AppTheme.displayMedium.copyWith(fontSize: 15,color: white_dark),)),
                                  Text('Dastlabki 16 kun 14 soat',style: AppTheme.displayMedium.copyWith(fontSize: 13,color: white_text,fontWeight: FontWeight.w400),),
                                ],
                              ),
                              10.horizontalSpace,
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
                                // Ahmadjon Safarov Usauma Company
                                5.verticalSpace,
                                Divider(color: white,height: 8,),
                                5.verticalSpace,
                                // Ahmadjon Safarov Usauma Company
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      radius: 10,
                                      backgroundImage: AssetImage(AppImages.company_logo),
                                    ),
                                    15.horizontalSpace,
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('@usauma • 13-kun oldin',style: AppTheme.labelSmaller.copyWith(fontWeight: FontWeight.w400,color: text_color,fontSize: 10)),
                                        5.verticalSpace,
                                        Text('Komment',style: AppTheme.displaySmall.copyWith(fontSize: 10,color: white),),
                                      ],
                                    )
                                  ],
                                ),
                                // Ahmadjon Safarov Usauma Company
                            ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Ahmadjon Safarov Usauma Company
            ],
          ),
        ),
      ),
    );
  }
}



// Ahmadjon Safarov Usauma Company