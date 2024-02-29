import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled4/assets/colors/colors.dart';

import '../../../../assets/constants/icons.dart';
import '../../../../assets/themes/theme.dart';

class VideoContent extends StatelessWidget {
  const VideoContent({super.key, required this.name, required this.image, required this.date, required this.comment, required this.minute, required this.prasmort, required this.like});
  final String name;
  final String image;
  final String date;
  final String comment;
  final String minute;
  final String prasmort;
  final String like;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 160,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.cover
              )
            ),
          ),
          10.horizontalSpace,
          SizedBox(
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                SizedBox(
                    height: 40,
                    width: 200,
                    child: Text("$name",maxLines: 2,overflow: TextOverflow.ellipsis,style: AppTheme.displayMedium.copyWith(fontSize: 15,color: white_dark),)),
                Spacer(),
                Text('$prasmort marta • $date oy oldin',style: AppTheme.displayMedium.copyWith(fontSize: 13,color: white_text,fontWeight: FontWeight.w400),),
                Spacer(),
                Row(
                  children: [
                    SizedBox(

                        child: SvgPicture.asset(AppIcons.earth,color: white,),
                    height: 22,),
                    15.horizontalSpace,
                    SvgPicture.asset(AppIcons.like),
                    10.horizontalSpace,
                    Text(like,style: AppTheme.displayMedium.copyWith(fontSize: 15,color: white),),
                    15.horizontalSpace,
                    SvgPicture.asset(AppIcons.comments),
                    10.horizontalSpace,
                    Text(comment,style: AppTheme.displayMedium.copyWith(fontSize: 15,color: white),),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
          Icon(Icons.more_vert,color: white,),
        ],
      ),
    );
  }
}
