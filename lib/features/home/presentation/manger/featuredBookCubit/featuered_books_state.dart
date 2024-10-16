import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';

class FeatuerdBooksState {}

class FeatueredBooksInitialState extends FeatuerdBooksState {}

class FeatueredBooksLoadingState extends FeatuerdBooksState {}

class FeatueredBooksSuccessState extends FeatuerdBooksState {
  final List<BookModel> books;

  FeatueredBooksSuccessState(this.books);
}

class FeatueredBooksFaluierState extends FeatuerdBooksState {
  final String errorMessage;

  FeatueredBooksFaluierState({required this.errorMessage});
}
