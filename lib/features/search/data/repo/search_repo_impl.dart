import 'package:bookly_app/core/errors/server_error.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/search/data/repo/search_repo.dart';
import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiServices apiServices;

  SearchRepoImpl(this.apiServices);

  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchBookData(
      {required String bookName}) async {
    try {
      var result = await apiServices.get(
          endpoint: 'volumes?q=intitle:$bookName&filter=free-ebooks');
      List<BookModel> bookList = [];
      for (var item in result['items']) {
        bookList.add(BookModel.fromJson(item));
      }
      return Right(bookList);
    } on DioException catch (e) {
      return Left(ServerError.fromDioException(e));
      //
    }
  }
}
