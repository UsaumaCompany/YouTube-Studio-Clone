// Ahmadjon Safarov Usauma Company
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled4/assets/constants/icons.dart';
import 'package:untitled4/assets/constants/images.dart';
import 'package:untitled4/assets/themes/theme.dart';

import '../../../../assets/colors/colors.dart';

class ChannelDataView extends StatefulWidget {
  const ChannelDataView({super.key});

  @override
  State<ChannelDataView> createState() => _ChannelDataViewState();
}
// Ahmadjon Safarov Usauma Company

class _ChannelDataViewState extends State<ChannelDataView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: dark,
      ),
      backgroundColor: dark,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 80.r,
                    height: 80.r,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(AppImages.company_logo),
                        fit: BoxFit.cover,
                      )
                    ),
                  ),
                  10.horizontalSpace,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('USAUMA \nCOMPANY',maxLines: 2,overflow: TextOverflow.ellipsis,style: AppTheme.labelLargest.copyWith(color: white,fontSize: 20),),
                      2.verticalSpace,
                      Text('@usaumacompany',style: AppTheme.labelMedium.copyWith(color: white),),
                    ],
                  ),
                  Spacer(),
                  SvgPicture.asset(AppIcons.edit),
                ],
              ),
              // Ahmadjon Safarov Usauma Company
              20.verticalSpace,
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.r),
                      color: grey_dark,
                    ),
                    child:Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          SizedBox(
                            child: SvgPicture.asset(AppIcons.person),
                            width: 10,
                            height: 10,
                          ),
                          5.horizontalSpace,
                          Text('Hisobni almashtirish',style: AppTheme.displayMedium.copyWith(fontSize: 10,color: white_dark),),
                        ],
                      ),
                    ),
                  ),
                  10.horizontalSpace,
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.r),
                      color: grey_dark,
                    ),
                    child:Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          SizedBox(
                            child: SvgPicture.asset(AppIcons.google_logo),
                            width: 10,
                            height: 10,
                          ),
                          5.horizontalSpace,
                          Text('Google hisobi',style: AppTheme.displayMedium.copyWith(fontSize: 10,color: white_dark),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              // Ahmadjon Safarov Usauma Company
              10.verticalSpace,
              Container(width: double.infinity,height: 0.5,color: white,),
              10.verticalSpace,
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  children: [
                    SizedBox(
                        width: 18.r,
                        height: 18.r,
                        child: SvgPicture.asset(AppIcons.settings)),
                    20.horizontalSpace,
                    Text('Sozlamalar',style: AppTheme.labelMedium.copyWith(color: white),),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_outlined,color: white,size: 18,),
                  ],
                ),
              ),
              // Ahmadjon Safarov Usauma Company
              Row(
                children: [
                  SizedBox(
                      width: 18.r,
                      height: 18.r,
                      child: SvgPicture.asset(AppIcons.letter)),
                  20.horizontalSpace,
                  Text('Fikr-mulohazalar',style: AppTheme.labelMedium.copyWith(color: white),),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios_outlined,color: white,size: 18,),
                ],
              ),
              // Ahmadjon Safarov Usauma Company
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  children: [
                    SizedBox(
                        width: 18.r,
                        height: 18.r,
                        child: SvgPicture.asset(AppIcons.questions_circle)),
                    20.horizontalSpace,
                    Text('Yordam markazi',style: AppTheme.labelMedium.copyWith(color: white),),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_outlined,color: white,size: 18,),
                  ],
                ),
              ),
              // Ahmadjon Safarov Usauma Company
              Row(
                children: [
                  SizedBox(
                      width: 18.r,
                      height: 18.r,
                      child: SvgPicture.asset(AppIcons.youtube_svg)),
                  20.horizontalSpace,
                  Text('Youtube',style: AppTheme.labelMedium.copyWith(color: white),),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios_outlined,color: white,size: 18,),
                ],
              ),
              // Ahmadjon Safarov Usauma Company
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  children: [
                    Text('Maxfiylik siyosati',style: AppTheme.labelMedium .copyWith(color: white),),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_outlined,color: white,size: 18,),
                  ],
                ),
              ),
              // Ahmadjon Safarov Usauma Company
              Row(
                children: [
                  Text('Xizmat shartlari',style: AppTheme.labelMedium.copyWith(color: white),),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios_outlined,color: white,size: 18,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// Ahmadjon Safarov Usauma Company