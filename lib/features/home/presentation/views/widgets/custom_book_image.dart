import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/test_image.png',
                ),
                fit: BoxFit.fill)),
      ),
    );
  }
}
