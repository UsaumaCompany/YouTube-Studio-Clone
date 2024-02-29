import 'package:flutter/material.dart';
import 'package:untitled4/assets/colors/colors.dart';
import 'package:untitled4/features/content/presentation/widgets/app_bar_content.dart';

import '../widgets/video_content.dart';

class ContentViews extends StatefulWidget {
  const ContentViews({super.key});
  /// Ahmadjon Safarov Usauma Company

  @override
  State<ContentViews> createState() => _ContentViewsState();
}
/// Ahmadjon Safarov Usauma Company

class _ContentViewsState extends State<ContentViews> {
  List data=[
    {
      'images':'https://i.ytimg.com/vi/ZZeDbdCK8jY/sddefault.jpg',
      'name':"Flutterda klaviaturani yo'q qilish | Flutter o'zbek tilida",
      'like':'14',
      'comment':'3',
      'prasmotr':'104',
      'date':'1',
      'minute':'1:16'
    },
    {
      'images':'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcR9s-YxONoNRetdFVrBlnhS9lrvs2fzM8EOyedrrGmaGMP1Qyfk',
      'name':"Fluttetda ilovani nomini va logosini o'zgartirish (O'zbek tilida )",
      'like':'11',
      'comment':'0',
      'prasmotr':'70',
      'date':'3',
      'minute':'7:12'
    },
    {
      'images':'https://i.ytimg.com/vi/-o0Mo7aHRGM/sddefault.jpg',
      'name':"Flutter Shimmer",
      'like':'8',
      'comment':'0',
      'prasmotr':'56',
      'date':'3',
      'minute':'6:17'
    },
    {
      'images':'https://i.ytimg.com/vi/WPfe19y4Nhw/sddefault.jpg',
      'name':"Flutter SelectableText",
      'like':'13',
      'comment':'0',
      'prasmotr':'101',
      'date':'3',
      'minute':'3:22'
    },
    {
      'images':'https://i.ytimg.com/vi/PWsCJ6k3jko/hq720.jpg?sqp=-oaymwE7CK4FEIIDSFryq4qpAy0IARUAAAAAGAElAADIQj0AgKJD8AEB-AH-CYAC0AWKAgwIABABGFwgXChcMA8=&rs=AOn4CLDWN-mVuUHRBPR_cNWk01dgn0e1xg',
      'name':"FLUTTER TEXTFROMFIELD STYLE",
      'like':'17',
      'comment':'0',
      'prasmotr':'98',
      'date':'11',
      'minute':'5:10'
    },
    {
      'images':'https://i.ytimg.com/vi/PWsCJ6k3jko/hq720.jpg?sqp=-oaymwE7CK4FEIIDSFryq4qpAy0IARUAAAAAGAElAADIQj0AgKJD8AEB-AH-CYAC0AWKAgwIABABGFwgXChcMA8=&rs=AOn4CLDWN-mVuUHRBPR_cNWk01dgn0e1xg',
      'name':"FLUTTER TEXTFROMFIELD",
      'like':'17',
      'comment':'0',
      'prasmotr':'95',
      'date':'11',
      'minute':'10:18'
    },
  ];
  /// Ahmadjon Safarov Usauma Company

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dark,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBarContent(),
              ListView.builder(
                  physics: const ClampingScrollPhysics(),
                  padding: EdgeInsets.all(0),
                  shrinkWrap: true,
                  itemCount: data.length,
                  itemBuilder: (context,index){
                    return VideoContent(name: data[index]['name'], image: data[index]['images'], date: data[index]['date'], comment: data[index]['comment'], minute: data[index]['minute'], prasmort: data[index]['prasmotr'], like: data[index]['like'],);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
/// Ahmadjon Safarov Usauma Company
