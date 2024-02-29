
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled4/features/common/widgets/w_circle_stack.dart';
import 'package:untitled4/features/common/widgets/w_circle_stack_digit.dart';
import '../../../assets/colors/colors.dart';
import '../../../assets/constants/icons.dart';
import '../../../assets/themes/theme.dart';

class WFarmList extends StatelessWidget {
  const WFarmList(
      {super.key,
      required this.image,
      required this.name,
      required this.location,
      required this.number,
      this.padding,
      required this.onPressed});
  final String image;
  final String name;
  final String location;
  final String number;
  final EdgeInsets? padding;
  final GestureTapCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onPressed,
      padding: EdgeInsets.zero,
      child: Container(
        height: 334,
        width: double.infinity,
        margin: padding,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            const WCricleStack(
                image:
                    "https://st4.depositphotos.com/36637138/37901/i/450/depositphotos_379012056-stock-photo-horse-head-close-side-profile.jpg"),
            const WCricleStack(
                left: 24,
                image:
                    "https://st4.depositphotos.com/36637138/37901/i/450/depositphotos_379012056-stock-photo-horse-head-close-side-profile.jpg"),
            const WCricleStack(
                left: 48,
                image:
                    "https://st4.depositphotos.com/36637138/37901/i/450/depositphotos_379012056-stock-photo-horse-head-close-side-profile.jpg"),
            const WCircleStackDigit(number: 25),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  name,
                  style: AppTheme.titleSmall
                      .copyWith(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      AppIcons.search,
                    ),
                    const SizedBox(
                      height: 8.6,
                    ),
                    Text(
                      location,
                      style: AppTheme.labelMedium.copyWith(color: white),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
