import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Core/shared_widget/shimmer_widget.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
    required this.urlImage,
  });
  final String urlImage;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      width: MediaQuery.of(context).size.width,
      fit: BoxFit.contain,
      imageUrl: urlImage,
      height: 90.h,
      placeholder: (context, url) {
        return ShimmerWidget(
          width: MediaQuery.of(context).size.width,
          height: 90.h,
        );
      },
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
