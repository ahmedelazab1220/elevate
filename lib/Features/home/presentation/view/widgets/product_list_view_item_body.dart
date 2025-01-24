import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Core/utils/app_styles.dart';
import '../../../data/models/product_model.dart';
import 'product_image.dart';
import 'product_price.dart';
import 'product_rating.dart';

class ProductListViewItemBody extends StatelessWidget {
  const ProductListViewItemBody({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProductImage(
          urlImage: productModel.image,
        ),
        Padding(
          padding: EdgeInsets.only(top: 5.h, bottom: 1.h),
          child: Text(
            productModel.title,
            style: AppStyles.textStyle16,
            maxLines: 1,
            overflow: TextOverflow.clip,
          ),
        ),
        Text(
          productModel.description,
          style: AppStyles.textStyle16,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 11.h, top: 8.h),
          child: ProductPrice(price: productModel.price),
        ),
        ProductRating(
          rating: productModel.rating.rate,
        ),
      ],
    );
  }
}
