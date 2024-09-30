import 'package:bookly_app/core/utils/fonts.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_rate_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BestSellerCard extends StatelessWidget {
  const BestSellerCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 120, child: Image.asset('assets/test_image.png')),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(10),
                Text('The Jungl Book', style: getTitleStyle()),
                const Gap(5),
                Text(
                  'Rudyad Kipling',
                  style: getGreyTextStyle(),
                ),
                const Gap(10),
                Row(
                  children: [
                    Text(
                      '19.99 €',
                      style: getPriceTextStyle(),
                    ),
                    const Gap(30),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.star,
                          color: Colors.yellow,
                        )),
                    const CustomRateWidget()
                  ],
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
