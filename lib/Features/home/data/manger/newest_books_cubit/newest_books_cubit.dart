import 'package:bloc/bloc.dart';

import '../../models/repos/home_repo.dart';
import '../../models/book_model.dart';
part  'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState>{
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks()async{
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold((failure) {
      emit(NewestBooksFailure(failure.errMessage));
    }, (books) {
      emit(NewestBooksSuccess(books));
    });
  }
}