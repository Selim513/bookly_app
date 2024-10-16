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
        child: const CustomBookImage(
          imageUrl:
              'https://www.google.com/imgres?q=image&imgurl=https%3A%2F%2Fplus.unsplash.com%2Fpremium_photo-1664474619075-644dd191935f%3Ffm%3Djpg%26q%3D60%26w%3D3000%26ixlib%3Drb-4.0.3%26ixid%3DM3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%253D&imgrefurl=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Fimage&docid=ExDvm63D_wCvSM&tbnid=2brKLR3s5kTpPM&vet=12ahUKEwi_jpS72JOJAxXBdqQEHeAkDN4QM3oECBkQAA..i&w=3000&h=2003&hcb=2&itg=1&ved=2ahUKEwi_jpS72JOJAxXBdqQEHeAkDN4QM3oECBkQAA',
        ));
    // SizedBox(
    //   height: MediaQuery.of(context).size.height * 0.3,
    //   child: Image.asset(
    //     'assets/test_image.png',
    //     fit: BoxFit.cover,
    //   ),
    // );
  }
}
