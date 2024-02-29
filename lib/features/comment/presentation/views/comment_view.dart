import 'package:flutter/material.dart';
import 'package:untitled4/assets/colors/colors.dart';
import 'package:untitled4/features/home/presentation/widgets/app_bar_home.dart';

import '../../../content/presentation/widgets/app_bar_content.dart';
import '../widgets/comment.dart';

class CommentView extends StatefulWidget {
  const CommentView({super.key});

  @override
  State<CommentView> createState() => _CommentViewState();
}
/// Ahmadjon Safarov Usauma Company

class _CommentViewState extends State<CommentView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dark,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                AppBarHome(),
                /// Ahmadjon Safarov Usauma Company

                ListView.builder(
                    physics: const ClampingScrollPhysics(),
                    padding: EdgeInsets.all(0),
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context,index){
                      return  Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Comment(),
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
/// Ahmadjon Safarov Usauma Company
