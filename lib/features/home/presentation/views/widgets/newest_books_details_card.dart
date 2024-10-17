import 'package:bookly_app/core/utils/fonts.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
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
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: NetworkImage(
                                booksDetails.imageLinks.thumbnail))),
                  )),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Gap(10),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .6,
                      child: Text("${booksDetails.title}",
                          maxLines: 2, style: getTitleStyle()),
                    ),
                    const Gap(5),
                    Text(
                      '${booksDetails.authors}',
                      maxLines: 1,
                      style: getGreyTextStyle(),
                    ),
                    Row(
                      children: [
                        if (books.saleInfo?.saleability == 'NOT_FOR_SALE')
                          Text(
                            'Free',
                            style: getPriceTextStyle(),
                          ),
                        const Spacer(),
                        CustomRateWidget(
                          avrageRating: booksDetails.averageRating,
                          rateCount: booksDetails.ratingsCount,
                        ),
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
