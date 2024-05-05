import 'package:book_app/Features/home/data/manger/newest_books_cubit/newest_books_cubit.dart';
import 'package:book_app/core/widgets/custom_error_widget.dart';
import 'package:book_app/core/widgets/custon_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'best_seller_item.dart';
class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit,NewestBooksState>(
      builder: ( context, state){
        if (state is NewestBooksSuccess){
         return  ListView.builder(
              itemCount: state.books.length,
              physics: const NeverScrollableScrollPhysics(),
              padding:  EdgeInsets.zero,
              itemBuilder: (context,index){
                return  Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child:  BooksListVewItem(bookModel: state.books[index],),
                );
              }
          );
        } else if (state is NewestBooksFailure){
          return CustomErrorWidget(errMessage: state.errMessage);
        }else{
          return const CustomLoadingIndicator();
        }
      },

    );
  }
}