import 'package:flutter/material.dart';

import '../../../../../Core/utils/app_icons.dart';
import '../../../../../Core/utils/app_styles.dart';

class ProductRating extends StatelessWidget {
  const ProductRating({super.key, required this.rating});
  final num rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 4.0),
          child: Text(
            'Review ($rating)',
            style: AppStyles.textStyle13,
          ),
        ),
        AppIcons.starIcon,
        const Spacer(),
      ],
    );
  }
}
