import 'package:flutter/cupertino.dart';
import 'package:formz/formz.dart';

class Paginator extends StatelessWidget {
  final FormzSubmissionStatus paginatorStatus;
  final Widget Function(BuildContext context, int index) itemBuilder;
  final int itemCount;
  final VoidCallback fetchMoreFunction;
  final bool hasMoreToFetch;
  final Widget errorWidget;
  final EdgeInsets? padding;
  final Widget? loadingWidget;
  final ScrollPhysics? physics;
  final SliverGridDelegate gridDelegate;

  const Paginator({
    required this.paginatorStatus,
    required this.itemBuilder,
    required this.itemCount,
    required this.fetchMoreFunction,
    required this.hasMoreToFetch,
    required this.errorWidget,
    required this.gridDelegate,
    this.padding = EdgeInsets.zero,
    this.loadingWidget,
    this.physics,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (paginatorStatus == FormzSubmissionStatus.inProgress) {
      return loadingWidget ?? const Center(child: CupertinoActivityIndicator());
    } else if (paginatorStatus == FormzSubmissionStatus.failure) {
      return errorWidget;
    } else {
      return GridView.builder(
        physics: physics ?? const BouncingScrollPhysics(),
        padding: padding,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          if (index == itemCount) {
            if (hasMoreToFetch) {
              fetchMoreFunction();
              return loadingWidget ?? const Center(child: CupertinoActivityIndicator());
            } else {
              return const SizedBox();
            }
          }
          return itemBuilder(context, index);
        },
        itemCount: itemCount + 1,
        gridDelegate: gridDelegate,
      );
    }
  }
}
