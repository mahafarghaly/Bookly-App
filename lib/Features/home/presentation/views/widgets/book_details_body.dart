import 'package:book_app/Features/home/data/models/book_model.dart';
import 'package:book_app/Features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';
import 'books_details_section.dart';
class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {

    return  CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child:Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                BooksDetailsSection(bookModel: bookModel,),
                const Expanded(
                  child:  SizedBox(
                    height: 50,
                  ),
                ),
                const SimilarBooksSection(),
                const SizedBox(height: 40,),
              ],
            ),
          ),
        )
      ],


    );
  }
}


