import 'package:book_app/Features/home/presentation/views/widgets/rating_bar.dart';
import 'package:book_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/styles.dart';

class BestSellerLstVewItem extends StatelessWidget {
  const BestSellerLstVewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     onTap: (){
       GoRouter.of(context).push(AppRouter.kBookDetailsView);
     },
      child: SizedBox(
        height: 130,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5/4,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(8.0),
                    image: const DecorationImage(
                        fit: BoxFit.fill,
                        image:AssetImage(
                          AssetData.testImage,
                        )
                    )
                ),
              ),
            ),
            const SizedBox(width: 30,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.5,
                    child:  Text(
                      "Harry Potter and The Goblet of Fire",
                      style:Styles.textStyle20
                          .copyWith(fontFamily:kGTSectraFineFont),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 3.0,
                  ),
                  const Text("J.K. Rowling",style: Styles.textStyle14,),
                  Row(
                    children: [
                      Text(
                        "19.99 E",style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold
                      ),
                      ),
                     const Spacer(),
                     const BookingRate()
                    ],)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

