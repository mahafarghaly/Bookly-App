import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/assets.dart';
import 'custom_appbar.dart';
import 'custom_list_view_item.dart';
class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Column(
      children: [
        CustomAppBar(),
        //CustomListViewItem(),
        FeaturedBooksListView()
      ],
    );
  }
}
class FeaturedBooksListView  extends StatelessWidget {
  const FeaturedBooksListView ({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: MediaQuery.of(context).size.height*0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context,index){
            return const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 8.0),
              child:  FeaturedListViewItem(),
            );
          }),
    );
  }
}

