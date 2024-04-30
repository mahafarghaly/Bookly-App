import 'package:book_app/Features/home/data/models/book_model.dart';
import 'package:book_app/Features/home/data/models/repos/home_repo.dart';
import 'package:book_app/core/errors/failure.dart';
import 'package:book_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl extends HomeRepo{
  final ApiService apiService;
  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async{
 try {
   var data = await apiService.get(
       endPoint: 'volumes?Filtering=free-ebooks&subject=newest&q=subject:Programming');
   List <BookModel> books = [];
   for(var item in data["items"]) {
     books.add(BookModel.fromJson(item));
   }
   return right(books);
 }catch(e){
return left(ServerFailure());
 }

  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks() {
    // TODO: implement fetchFeatureBooks
    throw UnimplementedError();
  }

}