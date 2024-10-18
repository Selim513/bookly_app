import 'package:bookly_app/features/home/data/repo/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/manger/similarBookCubit/similar_Books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBookCubit extends Cubit<SimilarBookState> {
  SimilarBookCubit(this.homerepo) : super(SimilarBookIntialState());
  final HomeRepoImpl homerepo;
  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBookLoadingState());
    print('Fetching similar books for category: $category'); // Debug line

    var result = await homerepo.fetchSimilarBooks(category: category);
    result.fold((failure) {
      print(
          'Failed to fetch similar books: ${failure.errorMessage}'); // Debug line

      emit(SimilarBookFailureState(errorMessage: failure.errorMessage));
    }, (books) {
      print('Fetched similar books: $books'); // Debug line

      emit(SimilarBookSuccessState(books));
    });
  }
}
