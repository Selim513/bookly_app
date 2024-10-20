import 'package:bookly_app/core/errors/server_error.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:either_dart/either.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<BookModel>>> fetchSearchBookData(
      {required String bookName});
}
