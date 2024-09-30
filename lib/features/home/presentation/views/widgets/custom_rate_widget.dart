import 'package:bookly_app/core/utils/fonts.dart';
import 'package:flutter/material.dart';

class CustomRateWidget extends StatelessWidget {
  const CustomRateWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
        text: '4.8',
        style: getTitleStyle(fontsize: 15),
      ),
      const TextSpan(text: ' '),
      TextSpan(
        text: '(225)',
        style: getGreyTextStyle(),
      )
    ]));
  }
}
