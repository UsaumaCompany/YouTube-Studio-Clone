

import 'package:flutter/material.dart';

import '../../../assets/colors/colors.dart';
import '../../../assets/themes/theme.dart';

class WDialog extends StatefulWidget {
  final String title;
  final List<Widget> listCategoryInformation;
  const WDialog({
    super.key,
    required this.listCategoryInformation,
    required this.title,
  });

  @override
  State<WDialog> createState() => _OrderStatusDialogState();
}

class _OrderStatusDialogState extends State<WDialog>
    with TickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  bool isOpen = true;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      surfaceTintColor: white,
      backgroundColor: white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.title,
            style: AppTheme.displaySmall,
          ),
          // CupertinoButton(
          //   onPressed: () => Navigator.pop(context),
          //   child: SvgPicture.asset(
          //     AppIcons.xmark,
          //     height: 22,
          //     width: 22,
          //   ),
          // )
        ],
      ),
      content: SizedBox(
        width: 860,
        height: 720,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 32,
              child: TabBar(
                isScrollable: true,
                dividerColor: Colors.transparent,
                controller: tabController,
                labelStyle: AppTheme.labelSmall,
                unselectedLabelColor: greyText,
                tabs: const [
                  Tab(text: "Uzbek"),
                  Tab(text: "Russian"),
                  Tab(text: "English"),
                ],
              ),
            ),
            const Divider(
              color: greyText,
              thickness: 1.5,
              height: 1,
            ),
            const SizedBox(height: 24),
            Expanded(
              child: TabBarView(
                controller: tabController,
                physics: const NeverScrollableScrollPhysics(),
                children: widget.listCategoryInformation,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
}
