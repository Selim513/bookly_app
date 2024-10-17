import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';

class SimilarBookState {}

class SimilarBookIntialState extends SimilarBookState {}

class SimilarBookLoadingState extends SimilarBookState {}

class SimilarBookSuccessState extends SimilarBookState {
  final List<BookModel> books;

  SimilarBookSuccessState({required this.books});
}

class SimilarBookFailureState extends SimilarBookState {
  final String errorMessage;

  SimilarBookFailureState({required this.errorMessage});
}
