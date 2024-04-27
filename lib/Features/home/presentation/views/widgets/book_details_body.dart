import 'package:book_app/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

import 'custom_book_details_appbar.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return  SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:30.0),
        child: Column(children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal:width*0.17),
            child: const CustomBookItem(),
          ),
        ],),
      ),
    );
  }
}
