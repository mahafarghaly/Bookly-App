import 'package:bloc/bloc.dart';
import 'package:book_app/Features/home/data/models/repos/home_repo.dart';
import '../../models/book_model.dart';
part  'featured_books_state.dart';
class FeaturedBooksCubit extends Cubit<FeaturedBooksState>{
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks()async{
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeatureBooks();
    result.fold((failure) {
      emit(FeaturedBooksFailure(failure.errMessage));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}