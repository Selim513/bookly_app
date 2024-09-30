import 'package:bookly_app/core/function/route.dart';
import 'package:bookly_app/features/details/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_card.dart';
import 'package:flutter/material.dart';

class BestSellerWidget extends StatelessWidget {
  const BestSellerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return GestureDetector(
            onTap: () {
              gotoPush(context, const BookDetailsView());
            },
            child: const BestSellerCard());
      },
    );
  }
}
