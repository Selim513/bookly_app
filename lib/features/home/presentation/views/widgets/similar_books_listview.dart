
import 'package:bookly_app/features/home/presentation/manger/similarBookCubit/similar_Books_state.dart';
import 'package:bookly_app/features/home/presentation/manger/similarBookCubit/similar_book_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<SimilarBookCubit, SimilarBookState>(
        builder: (context, state) {
          if (state is SimilarBookSuccessState) {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    CustomBookImage(
                        imageUrl: state.books[index].volumeInfo
                                .imageLinks?.thumbnail ??
                            '')
                  ],
                );
              },
            );
          } else if (state is SimilarBookFailureState) {
            return Center(
              child: Text(state.errorMessage),
            );
          } else if (state is SimilarBookLoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return const Center(
              child: Text(' an error occurred'),
            );
          }
        },
      ),
    );
  }
}
