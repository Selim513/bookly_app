import 'package:bookly_app/core/utils/fonts.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/manger/similarBookCubit/similar_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../custom_rate_widget.dart';
import '../similar_books_listview.dart';
import 'cusotm_image_preview.dart';
import 'custom_preview_button.dart';

class BookDetailsBody extends StatefulWidget {
  const BookDetailsBody({
    super.key,
    required this.books,
  });
  final BookModel books;

  @override
  State<BookDetailsBody> createState() => _BookDetailsBodyState();
}

class _BookDetailsBodyState extends State<BookDetailsBody> {
  @override
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SimilarBookCubit>(context)
        .fetchSimilarBooks(category: widget.books.volumeInfo.categories![0]);
  }

  @override
  Widget build(BuildContext context) {
    var booksDetails = widget.books.volumeInfo;
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
              '${booksDetails.title}',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: getTitleStyle(fontsize: 30, fontweight: FontWeight.w500),
            ),
            const Gap(10),
            Text(
              '${booksDetails.authors}',
              style: getGreyTextStyle(),
            ),
            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomRateWidget(
                  avrageRating: booksDetails.averageRating ?? 0,
                  rateCount: booksDetails.ratingsCount ?? 0,
                ),
              ],
            ),
            const Gap(10),
            const CustomPreviewButton(),
            const Gap(20),
            Row(
              children: [
                Text(
                  'You can also like',
                  style: getPriceTextStyle(),
                ),
              ],
            ),
            const Gap(10),
            const SimilarBooksListView()
          ],
        ),
      ),
    );
  }
}
