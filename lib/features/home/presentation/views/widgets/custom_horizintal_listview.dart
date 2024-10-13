import 'package:bookly_app/features/home/presentation/manger/featuredBookCubit/featuered_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manger/featuredBookCubit/featuered_books_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_image.dart';

class CustomHorizintalListView extends StatelessWidget {
  const CustomHorizintalListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatueredBooksCubit, FeatuerdBooksState>(
      builder: (context, state) {
        if (state is FeatueredBooksSuccessState) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return const CustomBookImage();
              },
            ),
          );
        } else if (state is FeatueredBooksFaluierState) {
          return Center(
            child: Text(state.errorMessage),
          );
        } else {
          return const Center(
            child: Text('aaaaaaaaaaaaaaaa'),
          );
        }
      },
    );
  }
}
