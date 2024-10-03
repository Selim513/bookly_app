import 'package:flutter/material.dart';

import '../../../../../../core/utils/fonts.dart';

class CustomPreviewButton extends StatelessWidget {
  const CustomPreviewButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            alignment: AlignmentDirectional.center,
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
            ),
            child: Text(
              '19.99 €',
              style: getPriceTextStyle(color: Colors.black),
            ),
          ),
        ),
        Expanded(
          child: Container(
            alignment: AlignmentDirectional.center,
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Color(0xffEF8262),
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  topRight: Radius.circular(20)),
            ),
            child: Text(
              'Free Preview',
              style: getPriceTextStyle(
                  color: Colors.white, fontweight: FontWeight.normal),
            ),
          ),
        ),
      ],
    );
  }
}
