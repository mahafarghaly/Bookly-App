import 'package:flutter/material.dart';

import 'best_seller_item.dart';
class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(0),
        itemBuilder: (context,index){
          return const Padding(
            padding:  EdgeInsets.symmetric(vertical: 10.0),
            child:  BestSellerLstVewItem(),
          );
        }
    );
  }
}