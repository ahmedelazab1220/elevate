import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Core/utils/app_styles.dart';
import 'product_image.dart';
import 'product_price.dart';
import 'product_rating.dart';

class ProductListViewItemBody extends StatelessWidget {
  const ProductListViewItemBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProductImage(
          urlImage:
              'https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg',
        ),
        Padding(
          padding: EdgeInsets.only(top: 5.h, bottom: 1.h),
          child: Text(
            'Mens Casual Premium Slim Fit T-Shirts ',
            style: AppStyles.textStyle16,
            maxLines: 1,
            overflow: TextOverflow.clip,
          ),
        ),
        Text(
          'Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable wearing. And Solid stitched shirts with round neck made for durability and a great fit for casual fashion wear and diehard baseball fans. The Henley style round neckline includes a three-button placket.',
          style: AppStyles.textStyle16,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 11.h, top: 8.h),
          child: ProductPrice(price: 22.3),
        ),
        ProductRating(
          rating: 4.1,
        ),
      ],
    );
  }
}
