import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../core/utils/fonts.dart';

class CustomPreviewButton extends StatelessWidget {
  const CustomPreviewButton({
    super.key,
    required this.visitUrl,
  });
  final String? visitUrl;
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
              'Free',
              style: getPriceTextStyle(color: Colors.black),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () async {
              print(visitUrl);

              if (visitUrl != null) {
                Uri url = Uri.parse(visitUrl!);
                if (await canLaunchUrl(url)) {
                  await launchUrl(url, mode: LaunchMode.externalApplication);
                } else {
                  throw 'Could not launch $visitUrl';
                }
              }
            },
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
        ),
      ],
    );
  }
}
