import 'package:book_app/Features/home/data/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:book_app/Features/home/data/manger/newest_books_cubit/newest_books_cubit.dart';
import 'package:book_app/Features/home/data/models/repos/home_repo_impl.dart';
import 'package:book_app/core/utils/api_locator.dart';
import 'package:book_app/core/utils/app_router.dart';
import 'package:book_app/core/utils/constants.dart';
import 'package:book_app/Features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setUpServiceLocator();
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          // textTheme: GoogleFonts.montserratTextTheme(),
        ),
      ),
    );
  }
}
