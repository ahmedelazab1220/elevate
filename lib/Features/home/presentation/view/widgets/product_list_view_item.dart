import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Core/utils/app_colors.dart';
import '../../../data/models/product_model.dart';
import 'add_to_cart_button.dart';
import 'add_to_fav_button.dart';
import 'product_list_view_item_body.dart';

class ProductListViewItem extends StatelessWidget {
  const ProductListViewItem({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.46,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 5.h,
              bottom: 15.h,
              left: 5.w,
              right: 5.w,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.r),
              border: Border.all(
                color: AppColors.borderColor,
                width: 3.r,
              ),
            ),
            child: ProductListViewItemBody(
              productModel: productModel,
            ),
          ),
          AddToCartButton(),
          AddToFavButton(),
        ],
      ),
    );
  }
}
