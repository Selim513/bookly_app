import 'package:bookly_app/core/utils/fonts.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_rate_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BookDetailsListViewItem extends StatelessWidget {
  const BookDetailsListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                  aspectRatio: 2.7 / 3,
                  child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/test_image.png'))),
                  )),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Gap(10),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .6,
                      child: Text('The Jungl Book Book ',
                          maxLines: 2, style: getTitleStyle()),
                    ),
                    const Gap(5),
                    Text(
                      'Rudyad Kipling',
                      style: getGreyTextStyle(),
                    ),
                    Row(
                      children: [
                        Text(
                          '19.99 €',
                          style: getPriceTextStyle(),
                        ),
                        const Spacer(),
                        const CustomRateWidget(),
                        const Gap(10),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
