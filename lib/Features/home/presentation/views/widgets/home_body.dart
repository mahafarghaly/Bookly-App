import 'package:book_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'best_seller_item.dart';
import 'books_list_view.dart';
import 'custom_appbar.dart';
import 'featured_list_view.dart';
class HomeBody extends StatelessWidget {
  const HomeBody({super.key});
  @override
  Widget build(BuildContext context) {
    return  const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 30.0),
                child: CustomAppBar(),
              ),
              FeaturedBooksListView(),
              SizedBox(height: 50,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 30.0),
                child: Text("Newest Books",style:Styles.textStyle18,),
              ),
              SizedBox(height: 20,),
             // BestSellerListView()
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 30.0),
            child: BestSellerListView(),
          ),
        )
      ],
    );
  }
}


