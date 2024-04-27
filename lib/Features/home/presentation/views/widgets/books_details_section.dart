import 'package:book_app/Features/home/presentation/views/widgets/rating_bar.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/styles.dart';
import 'books_action.dart';
import 'custom_book_details_appbar.dart';
import 'custom_book_item.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.17),
          child: const CustomBookImage(),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          "The Jungle Book",
          style: Styles.textStyle30.copyWith(
              fontWeight: FontWeight.bold, fontFamily: kGTSectraFineFont),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          "Rudyard Kipling",
          style: Styles.textStyle18.copyWith(
            fontWeight: FontWeight.w500,
            fontFamily: kGTSectraFineFont,
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookingRate(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        const BookAction(),
      ],
    );
  }
}
