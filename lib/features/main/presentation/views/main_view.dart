import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../assets/colors/colors.dart';
import '../controllers/bloc/main_bloc.dart';
import '../controllers/main_controller.dart';

class MainView extends StatelessWidget {
  MainView({super.key});

  final vmController = MainController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        return CupertinoTabScaffold(
          tabBuilder: (BuildContext context, int index) {
            return CupertinoTabView(
              builder: (BuildContext context) {
                return vmController.navItems[index].page;
              },
            );
          },
          tabBar: CupertinoTabBar(

            backgroundColor: darkText,
            onTap: (index) {
              context.read<MainBloc>().add(
                    NavItemChangedEvent(currentIndex: index),
                  );

              FocusManager.instance.primaryFocus?.unfocus();
            },
            items: vmController.navItems
                .asMap()
                .entries
                .map((entries) => _buildItem(
                    entries.value.icon,state.currentIndex == entries.key,entries.value.label))
                .toList(),
          ),
        );
      },
    );
  }

  BottomNavigationBarItem _buildItem(String icon, bool isCurrent,String label) {
    return BottomNavigationBarItem(
      backgroundColor: darkText,
      icon: Column(
        children: [
          Spacer(),
          Spacer(),
          SvgPicture.asset(
            icon,
            colorFilter: ColorFilter.mode(
              isCurrent ? red_bottom : imageB,
              BlendMode.srcIn,
            ),
          ),
          Spacer(),
          Text(label,style: TextStyle(color: isCurrent ? red_bottom : imageB,),),
          Spacer(),
          Spacer(),
        ],
      )
    );
  }
}
