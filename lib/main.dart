import 'package:book_app/core/utils/constants.dart';
import 'package:book_app/Features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() {
  runApp(const BookApp());
}
class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner:false ,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
       // textTheme: GoogleFonts.montserratTextTheme(),
      ),
        home:const SplashView()
    );
  }
}
