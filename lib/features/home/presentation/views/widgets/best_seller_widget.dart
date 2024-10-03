import 'package:bookly_app/core/function/route.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_card.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) {
        return GestureDetector(
            onTap: () {
              gotoPush(context, const BookDetailsView());
            },
            child: const BookDetailsListViewItem());
      },
    );
  }
}
