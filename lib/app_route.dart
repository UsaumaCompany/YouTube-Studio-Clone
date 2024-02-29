import 'package:flutter/material.dart';
import 'package:untitled4/features/content/presentation/views/content_view.dart';
import 'package:untitled4/features/home/presentation/views/channel_data_view.dart';

/// Ahmadjon Safarov Usauma Company

abstract class AppRoute {
  AppRoute._();
  // Go Channel Data
  static goChannelData(BuildContext context)=> Navigator.of(context).push(MaterialPageRoute(builder: (_)=> ChannelDataView()));
  // Go Content View
  static goContentView(BuildContext context)=> Navigator.of(context).push(MaterialPageRoute(builder: (_)=> ContentViews()));
  // go back
  static goBack(BuildContext context)=> Navigator.pop(context);
}
/// Ahmadjon Safarov Usauma Company
