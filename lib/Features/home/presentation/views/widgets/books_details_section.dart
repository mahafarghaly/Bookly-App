import 'package:book_app/Features/home/presentation/views/widgets/rating_bar.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/book_model.dart';
import 'books_action.dart';
import 'custom_book_details_appbar.dart';
import 'custom_book_image.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.17),
          child:  CustomBookImage(
imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail??"",
        ),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
         bookModel.volumeInfo.title!,
          style: Styles.textStyle30.copyWith(
              fontWeight: FontWeight.bold, fontFamily: kGTSectraFineFont,),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          bookModel.volumeInfo.authors?[0]??"",
          style: Styles.textStyle18.copyWith(
            fontWeight: FontWeight.w500,
            fontFamily: kGTSectraFineFont,
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(
          height: 18,
        ),
         BookingRate(
          mainAxisAlignment: MainAxisAlignment.center, rating: bookModel.volumeInfo.averageRating??0,
           count: bookModel.volumeInfo.ratingsCount??0,
        ),
        const SizedBox(
          height: 37,
        ),
         BookAction(bookModel: bookModel,),
      ],
    );
  }
}
