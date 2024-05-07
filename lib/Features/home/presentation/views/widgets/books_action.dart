import 'package:book_app/Features/home/data/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/widgets/custom_button.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child:  Row(
        children: [
          const Expanded(
            child: CustomButton(
              text: "Free",
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed:() async{
Uri uri = Uri.parse(bookModel.volumeInfo.previewLink!);
if(await canLaunchUrl(uri)){
  await launchUrl(uri);
}
              },
              text: "Preview",
              fontSize: 16,
              backgroundColor: Color(0xFFEF8262),
              textColor: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
