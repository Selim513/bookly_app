import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';

class NewestBookState {}

class NewestBookIntialState extends NewestBookState {}

class NewestBookLoadingState extends NewestBookState {}

class NewestBookSuccessState extends NewestBookState {
  final List<BookModel> books;

  NewestBookSuccessState({required this.books});
}

class NewestBookFailureState extends NewestBookState {
  final String errorMessage;

  NewestBookFailureState({required this.errorMessage});
}
