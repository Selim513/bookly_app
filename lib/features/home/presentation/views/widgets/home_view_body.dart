import 'package:bookly_app/features/home/presentation/views/widgets/custom_horizintal_listview.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'best_seller_widget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20),
      child: Column(
        children: [
          Gap(20),
          Expanded(flex: 2, child: CustomHorizintalListView()),
          Row(
            children: [
              Text(
                'Best Seller',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
            ],
          ),
          Gap(10),
          Expanded(flex: 3, child: BestSellerWidget())
        ],
      ),
    );
  }
}
