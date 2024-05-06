part of 'similar_books_cubit.dart';
abstract class SimilarBooksState {
  const SimilarBooksState();

}
class SimilarBooksInitial extends SimilarBooksState{}
class SimilarBooksLoading extends SimilarBooksState{}
class SimilarBooksSuccess extends SimilarBooksState{
  final List<BookModel> books;
  const SimilarBooksSuccess(this.books);
}
class SimilarBooksFailure extends SimilarBooksState{
  final String errMessage;
  const SimilarBooksFailure(this.errMessage);

}