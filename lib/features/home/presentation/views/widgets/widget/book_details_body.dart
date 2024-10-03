import 'package:bookly_app/core/utils/fonts.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_rate_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'cusotm_image_preview.dart';
import 'custom_preview_button.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Center(
        child: Column(
          children: [
            const CustomImagePerview(),
            Text(
              'The Jungle Book',
              style: getTitleStyle(fontsize: 30, fontweight: FontWeight.w500),
            ),
            const Gap(10),
            Text(
              'Rudyard Kipling',
              style: getGreyTextStyle(),
            ),
            const Gap(10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomRateWidget(),
              ],
            ),
            const Gap(10),
            const CustomPreviewButton(),
            const Gap(30),
            Row(
              children: [
                Text(
                  'You can also like',
                  style: getPriceTextStyle(),
                ),
              ],
            ),
            const Gap(10),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Image.asset('assets/test_image.png'),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
