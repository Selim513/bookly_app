import 'package:bookly_app/core/utils/fonts.dart';
import 'package:flutter/material.dart';

class CustomRateWidget extends StatelessWidget {
  const CustomRateWidget({
    super.key,
     this.avrageRating,
     this.rateCount,
  });
  final int? avrageRating;
  final int? rateCount;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.star,
              color: Colors.yellow,
            )),
        RichText(
            text: TextSpan(children: [
          TextSpan(
            text: '$avrageRating',
            style: getTitleStyle(fontsize: 15),
          ),
          const TextSpan(text: ' '),
          TextSpan(
            text: '($rateCount)',
            style: getGreyTextStyle(),
          )
        ])),
      ],
    );
  }
}
