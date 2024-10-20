import 'package:bookly_app/core/utils/fonts.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_rate_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BookDetailsListViewItem extends StatelessWidget {
  const BookDetailsListViewItem({
    super.key,
    required this.books,
  });
  final BookModel books;
  @override
  Widget build(BuildContext context) {
    var booksDetails = books.volumeInfo;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: 150,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomBookImage(
                    imageUrl: booksDetails.imageLinks?.thumbnail ?? ''),
                const Gap(10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Gap(10),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .6,
                        child: Text("${booksDetails.title}",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: getTitleStyle()),
                      ),
                      const Gap(5),
                      Text(
                        booksDetails.authors?[0] ?? '',
                        maxLines: 1,
                        style: getGreyTextStyle(),
                      ),
                      Row(
                        children: [
                          Text(
                            'Free',
                            style: getPriceTextStyle(),
                          ),
                          const Spacer(),
                          CustomRateWidget(
                            avrageRating: booksDetails.averageRating ?? 0,
                            rateCount: booksDetails.ratingsCount ?? 0,
                          ),
                          const Gap(10),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Gap(15),
        ],
      ),
    );
  }
}
