import 'package:bookly_app/features/home/data/repo/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/manger/featuredBookCubit/featuered_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatueredBooksCubit extends Cubit<FeatuerdBooksState> {
  FeatueredBooksCubit(this.homeRepo) : super(FeatueredBooksInitialState());
  final HomeRepoImpl homeRepo;
  Future<void> getFeatueredBooks() async {
    emit(FeatueredBooksLoadingState());
    var data = await homeRepo.fetchFeaturedBooks();
    data.fold(
      (failuer) =>
          emit(FeatueredBooksFaluierState(errorMessage: failuer.errorMessage)),
      (books) => emit(FeatueredBooksSuccessState(books: books)),
    );
    try {
      homeRepo.fetchFeaturedBooks().then(
        (value) {
          emit(FeatueredBooksSuccessState(books: value.right));
        },
      );
    } catch (e) {}
  }
}
