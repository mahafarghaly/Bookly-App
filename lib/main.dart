import 'package:book_app/core/utils/app_router.dart';
import 'package:book_app/core/utils/constants.dart';
import 'package:book_app/Features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const BookApp());
}
class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner:false ,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
       // textTheme: GoogleFonts.montserratTextTheme(),
      ),

    );
  }
}
