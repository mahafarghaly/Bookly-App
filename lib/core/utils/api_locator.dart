import 'package:book_app/Features/home/data/models/repos/home_repo.dart';
import 'package:book_app/Features/home/data/models/repos/home_repo_impl.dart';
import 'package:book_app/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setUpServiceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
    getIt.get<ApiService>(),
  ));
}
