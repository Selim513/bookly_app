import 'package:bookly_app/features/details/presentation/views/widget/book_details_body.dart';
import 'package:bookly_app/features/details/presentation/views/widget/custom_appbar_book_details.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbarBookDetails(),
      body: BookDetailsBody(),
    );
  }
}
