import 'package:bookly_app/core/utils/services_locator.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repo/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/manger/similarBookCubit/similar_book_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_body.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_appbar_book_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key, required this.books});
  final BookModel books;

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbarBookDetails(),
      body: BlocProvider(
        create: (context) => SimilarBookCubit(getIt.get<HomeRepoImpl>()
          ..fetchSimilarBooks(category: books.volumeInfo.categories?[0] ?? '')),
        child: BookDetailsBody(
          books: books,
        ),
      ),
    );
  }
}
