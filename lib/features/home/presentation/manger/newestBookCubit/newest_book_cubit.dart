import 'package:bookly_app/features/home/data/repo/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/manger/newestBookCubit/newest_book_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBookCubit extends Cubit<NewestBookState> {
  NewestBookCubit(this.homeRepo) : super(NewestBookIntialState());
  final HomeRepoImpl homeRepo;
  Future<void> getNewestBooks() async {
    var result = await homeRepo.fetchNewestBooks();
    result.fold(
      (failure) =>
          emit(NewestBookFailureState(errorMessage: failure.errorMessage)),
      (books) => emit(NewestBookSuccessState(books: books)),
    );
  }
}
