import 'package:bookly_app/core/errors/server_error.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:either_dart/either.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImpl(this.apiServices);
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() async {
    try {
      var data = await apiServices.get(
          endpoint: 'volumes?filtering=free-ebooks&q=subject:programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } catch (e) {
      return Left(ServerError("An unexpected error occurred"));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiServices.get(
          endpoint: 'volumes?filtering=free-ebooks&q=subject:programming');
      List<BookModel> books = [];
      for (var item in data['f']) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } catch (e) {
      return Left(ServerError("An unexpected error occurred"));
    }
  }
}
