import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class CustomImagePerview extends StatelessWidget {
  const CustomImagePerview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: width * .2),
        child: const CustomBookImage());
    // SizedBox(
    //   height: MediaQuery.of(context).size.height * 0.3,
    //   child: Image.asset(
    //     'assets/test_image.png',
    //     fit: BoxFit.cover,
    //   ),
    // );
  }
}
