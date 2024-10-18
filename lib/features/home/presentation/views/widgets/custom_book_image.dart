import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: AspectRatio(
          aspectRatio: 2.6 / 4,
          child: CachedNetworkImage(
            errorWidget: (context, url, error) => Image.asset(
              'assets/404.jpg',
              fit: BoxFit.cover,
            ),
            placeholder: (context, url) =>
                const Center(child: CircularProgressIndicator()),
            imageUrl: imageUrl,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}

      // Container(
      //   margin: const EdgeInsets.only(right: 10),
      //   decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(20),
      //       image: DecorationImage(
      //           image: NetworkImage(imageUrl), fit: BoxFit.fill)),
      // ),