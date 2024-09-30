
import 'package:flutter/material.dart';

class CustomHorizintalListView extends StatelessWidget {
  const CustomHorizintalListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, index) {
        return Row( 
          children: [
            SizedBox(
              height: 300,
              child: Image.asset('assets/test_image.png'),
            ),
          ],
        );
      },
    );
  }
}
