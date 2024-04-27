import 'package:book_app/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:book_app/Features/home/presentation/views/widgets/rating_bar.dart';
import 'package:book_app/Features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:book_app/core/utils/styles.dart';
import 'package:book_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/constants.dart';
import 'books_action.dart';
import 'custom_book_details_appbar.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child:Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
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
                const Expanded(
                  child:  SizedBox(
                    height: 50,
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text("You can also like",style: Styles.textStyle16.copyWith(
                    fontWeight: FontWeight.w600,
                  ),),
                ),
                const SizedBox(height: 16,),
                const SimilarBooksListView(),
                const SizedBox(height: 40,),
              ],
            ),
          ),
        )
      ],


    );
  }
}


