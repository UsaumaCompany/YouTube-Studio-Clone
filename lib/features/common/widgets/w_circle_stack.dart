import 'package:flutter/cupertino.dart';

import '../../../assets/colors/colors.dart';

class WCricleStack extends StatelessWidget {
  final double left;
  final String image;
  const WCricleStack({super.key, this.left = 0, required this.image});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: white, width: 1.5),
          image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
