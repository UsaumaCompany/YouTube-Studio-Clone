import 'package:flutter/material.dart';

import '../../../assets/colors/colors.dart';

class WTabBar extends StatelessWidget {
  final TabController? tabController;
  final List<Widget> tabs;
  final Function(int)? onTap;

  const WTabBar({this.tabController, required this.tabs, Key? key, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: wboxShadow,
        border: Border.all(color: const Color(0xffBFC8Cf)),
      ),
      child: TabBar(
        padding: const EdgeInsets.all(8),
        labelPadding: const EdgeInsets.all(8),
        indicator: ShapeDecoration(
          shadows: [
            BoxShadow(
                blurRadius: 1,
                offset: const Offset(0, 3),
                color: const Color(0xff000000).withOpacity(0.04)),
            BoxShadow(
                blurRadius: 8,
                offset: const Offset(0, 3),
                color: const Color(0xff000000).withOpacity(0.12)),
          ],
          shape: RoundedRectangleBorder(
              side:
                  BorderSide(color: const Color(0xff000000).withOpacity(0.04)),
              borderRadius: BorderRadius.circular(8)),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[lightBlue, blue],
          ),
        ),
        controller: tabController,
        indicatorSize: TabBarIndicatorSize.tab,
        onTap: onTap,
        unselectedLabelStyle: Theme.of(context)
            .textTheme
            .displayLarge!
            .copyWith(fontSize: 13, fontWeight: FontWeight.w600),
        labelStyle: Theme.of(context).textTheme.displayLarge!.copyWith(
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
        unselectedLabelColor: shuttleGrey,
        labelColor: white,
        tabs: tabs,
      ),
    );
  }
}
