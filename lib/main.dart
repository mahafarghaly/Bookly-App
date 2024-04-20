import 'package:book_app/Features/splash/presentation/views/widgets/constants.dart';
import 'package:book_app/Features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BookApp());
}
class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false ,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
      ),
        home:const SplashView()
    );
  }
}
