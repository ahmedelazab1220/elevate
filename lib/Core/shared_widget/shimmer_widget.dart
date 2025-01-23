import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  const ShimmerWidget({
    super.key,
    required this.height,
    required this.width,
    this.margin,
  });

  final double height;
  final double width;

  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[200]!,
      highlightColor: Colors.grey[400]!,
      child: Container(
        margin: margin ?? EdgeInsets.zero,
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Colors.grey[500]!,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
