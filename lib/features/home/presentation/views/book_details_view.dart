import 'package:bookly_app/features/home/presentation/views/widgets/widget/book_details_body.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/widget/custom_appbar_book_details.dart';
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
