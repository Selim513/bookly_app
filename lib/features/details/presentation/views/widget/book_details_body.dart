import 'package:bookly_app/core/utils/fonts.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_rate_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
            const Gap(10),
            Image.asset(
              'assets/test_image.png',
              width: 200,
            ),
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
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                CustomRateWidget(),
              ],
            ),
            const Gap(10),
            Row(
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
            ),
            const Gap(30),
            Row(
              children: [
                Text(
                  'You can also like',
                  style: getPriceTextStyle(),
                ),
              ],
            ),
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
