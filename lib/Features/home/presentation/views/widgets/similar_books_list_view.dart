import 'package:book_app/Features/home/data/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:book_app/core/widgets/custom_error_widget.dart';
import 'package:book_app/core/widgets/custon_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_image.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.15,
      child: BlocBuilder<SimilarBooksCubit,SimilarBooksState>(

        builder: ( context,  state) {
          if (state is SimilarBooksSuccess) {
            return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount:state.books.length ,
                itemBuilder: (context, index) {
                  return  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: CustomBookImage(
                  imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail??"",
                  )
                  );
                });
          }else if (state is SimilarBooksFailure){
            return CustomErrorWidget(errMessage: state.errMessage);
          }else{
            return const CustomLoadingIndicator();
          }
        },

      ),
    );
  }
}