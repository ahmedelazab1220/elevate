import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'product_list_view_item.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 10.h,
      spacing: 7.w,
      children: List.generate(
        8,
        (index) => ProductListViewItem(),
      ),
    );
  }
}
