import 'package:bookly_app/core/utils/fonts.dart';
import 'package:bookly_app/features/search/manger/search_Cubit/search_cubit.dart';
import 'package:bookly_app/features/search/manger/search_Cubit/search_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../home/presentation/views/widgets/newest_books_details_card.dart';
import 'widgets/custom_search_textfield.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back)),
              Expanded(child: CustomSearchTextField(
                onChanged: (value) async {
                  await BlocProvider.of<SearchCubit>(context)
                      .fetchSearchData(value);
                },
              )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Search Result',
              style: getPriceTextStyle(fontsize: 17),
            ),
          ),
          BlocBuilder<SearchCubit, SearchState>(
            builder: (context, state) {
              if (state is SearchSuccessState) {
                return Expanded(
                    child: ListView.builder(
                  itemCount: state.books.length,
                  itemBuilder: (context, index) {
                    return BookDetailsListViewItem(
                      books: state.books[index],
                    );
                  },
                ));
              } else if (state is SearchFailureState) {
                return Center(
                  child: Text(state.errorMessage),
                );
              } else if (state is SearchLoadingState) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return const Center(
                  child: Text('Search for books'),
                );
              }
            },
          )
        ],
      ),
    ));
  }
}
