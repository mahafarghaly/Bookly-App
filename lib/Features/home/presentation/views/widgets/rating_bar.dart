import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookingRate extends StatelessWidget {
  const BookingRate({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(FontAwesomeIcons.solidStar,
          color: Color(0XffFFDD4F),),
        SizedBox(width: 6.3),
        Text("4.5",style: Styles.textStyle16,),
        SizedBox(width: 5),
        Text('(245)',style: Styles.textStyle14,)

      ],
    );
  }
}
