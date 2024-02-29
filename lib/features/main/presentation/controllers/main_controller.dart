import 'package:flutter/cupertino.dart';
import 'package:untitled4/assets/colors/colors.dart';
import 'package:untitled4/features/content/presentation/views/content_view.dart';
import 'package:untitled4/features/home/presentation/views/home_view.dart';
import '../../../../assets/constants/icons.dart';
import '../../../comment/presentation/views/comment_view.dart';
import '../../domain/entity/nav_item_entity.dart';
/// Ahmadjon Safarov Usauma Company
class MainController {
  List<NavItemEntity> navItems = [
    NavItemEntity(page:  HomeView(), icon: AppIcons.control, label: 'Asosiy'),
    NavItemEntity(page:  ContentViews(), icon: AppIcons.contents, label: 'Kontent'),
    NavItemEntity(page: Container(color: dark,), icon: AppIcons.analytics_nav_bar, label: 'Analytics'),
    NavItemEntity(page:  CommentView(), icon: AppIcons.comments, label: 'Fikrlar'),
    NavItemEntity(page:  Container(color: dark,), icon: AppIcons.money, label: 'Daromad'),
  ];
}

/// Ahmadjon Safarov Usauma Company
