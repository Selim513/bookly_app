import 'package:bookly_app/features/home/data/repo/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/manger/featuredBookCubit/featuered_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatueredBooksCubit extends Cubit<FeatuerdBooksState> {
  FeatueredBooksCubit(this.homeRepo) : super(FeatueredBooksInitialState());
  final HomeRepoImpl homeRepo;
  Future<void> getFeaturedBooks() async {
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) =>
          emit(FeatueredBooksFaluierState(errorMessage: failure.errorMessage)),
      (books) => emit(FeatueredBooksSuccessState(books)),
    );
  }
}
