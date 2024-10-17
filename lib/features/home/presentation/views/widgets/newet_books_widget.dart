import 'package:bookly_app/core/function/route.dart';
import 'package:bookly_app/features/home/presentation/manger/newestBookCubit/newest_book_cubit.dart';
import 'package:bookly_app/features/home/presentation/manger/newestBookCubit/newest_book_state.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/newest_books_details_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBookCubit, NewestBookState>(
      builder: (context, state) {
        if (state is NewestBookSuccessState) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () {
                    gotoPush(
                        context,
                        BookDetailsView(
                          books: state.books[index],
                        ));
                  },
                  child: BookDetailsListViewItem(
                    books: state.books[index],
                  ));
            },
          );
        } else if (state is NewestBookFailureState) {
          return Center(
            child: Text(state.errorMessage),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
