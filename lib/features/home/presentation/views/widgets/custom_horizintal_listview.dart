import 'package:flutter/material.dart';

import 'custom_book_image.dart';

class CustomHorizintalListView extends StatelessWidget {
  const CustomHorizintalListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return const CustomBookImage();
        },
      ),
    );
  }
}
