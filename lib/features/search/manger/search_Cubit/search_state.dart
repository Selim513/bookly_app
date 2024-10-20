import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';

class SearchState {}

class SearchInitialState extends SearchState {}

class SearchSuccessState extends SearchState {
  final List<BookModel> books;

  SearchSuccessState(this.books);
}

class SearchFailureState extends SearchState {
  final String errorMessage;

  SearchFailureState(this.errorMessage);
}

class SearchLoadingState extends SearchState {}
