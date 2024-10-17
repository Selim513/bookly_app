import 'package:bookly_app/core/utils/fonts.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'cusotm_image_preview.dart';
import 'custom_preview_button.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({
    super.key,
    required this.books,
  });
  final BookModel books;

  @override
  Widget build(BuildContext context) {
    var booksDetails = books.volumeInfo;
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Center(
        child: Column(
          children: [
            CustomImagePerview(
              imageUrl: booksDetails.imageLinks?.thumbnail ?? '',
            ),
            const Gap(10),
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
                // CustomRateWidget(),
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
