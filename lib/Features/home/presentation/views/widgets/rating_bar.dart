import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookingRate extends StatelessWidget {

  const BookingRate({super.key,  this.mainAxisAlignment=MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment:mainAxisAlignment,
      children:  [
        const Icon(FontAwesomeIcons.solidStar,
          weight: 14,
          color: Color(0XffFFDD4F),),
        const SizedBox(width: 6.3),
        const Text("4.5",style: Styles.textStyle16,),
        const SizedBox(width: 5),
        Opacity(
            opacity: 0.5,
            child: Text('(245)',style: Styles.textStyle14.copyWith(
              fontWeight: FontWeight.w600
            ),
            ),
        )

      ],
    );
  }
}
