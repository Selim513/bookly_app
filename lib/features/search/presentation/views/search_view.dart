import 'package:bookly_app/core/utils/fonts.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_card.dart';
import 'package:flutter/material.dart';

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
          const CustomSearchTextField(),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'Search Result',
              style: getPriceTextStyle(fontsize: 17),
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return const BookDetailsListViewItem();
            },
          ))
        ],
      ),
    ));
  }
}
