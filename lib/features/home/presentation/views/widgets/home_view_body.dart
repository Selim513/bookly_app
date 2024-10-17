import 'package:bookly_app/features/home/presentation/views/widgets/newet_books_widget.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_horizintal_listview.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              children: [
                Gap(10),
                CustomHorizintalListView(),
                Gap(20),
                Row(
                  children: [
                    Text(
                      'Best Seller',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SliverFillRemaining(
          child: NewestBooksListView(),
        ),
      ],
    );
  }
}
