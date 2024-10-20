import 'package:bookly_app/features/search/data/repo/search_repo_impl.dart';
import 'package:bookly_app/features/search/manger/search_Cubit/search_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitialState());
  final SearchRepoImpl searchRepo;
  Future<void> fetchSearchData(String bookName) async {
    var books = await searchRepo.fetchSearchBookData(bookName: bookName);
    books.fold(
      (fauiler) => emit(SearchFailureState(fauiler.errorMessage)),
      (books) => emit(SearchSuccessState(books)),
    );
  }
}
