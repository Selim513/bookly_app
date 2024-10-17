import 'package:bookly_app/features/home/data/repo/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/manger/similarBookCubit/similar_Books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBookCubit extends Cubit<SimilarBookState> {
  SimilarBookCubit(this.homerepo) : super(SimilarBookIntialState());
  final HomeRepoImpl homerepo;
  Future<void> fetchSimilarBooks({required String category}) async {
    var result = await homerepo.fetchSimilarBooks(category: category);
    result.fold(
      (failuer) =>
          emit(SimilarBookFailureState(errorMessage: failuer.errorMessage)),
      (books) => books,
    );
  }
}
