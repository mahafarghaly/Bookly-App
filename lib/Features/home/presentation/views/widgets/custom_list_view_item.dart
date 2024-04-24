import 'package:book_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7/4,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.amber,
          borderRadius: BorderRadius.circular(16.0),
         image: const DecorationImage(
             fit: BoxFit.fill,
             image:AssetImage(
               AssetData.testImage,
             )
         )
        ),
      ),
    );
  }
}