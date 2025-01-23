import 'package:flutter/material.dart';
import '../../../../../Core/utils/app_colors.dart';
import '../../../../../Core/utils/app_icons.dart';
import '../../../../../Core/utils/toast.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      right: 10,
      child: ClipOval(
        child: Material(
          color: AppColors.darkBlueColor,
          child: InkWell(
            onTap: () {
              // Add to cart
              showToast(
                title: 'Product added to cart',
                color: AppColors.primaryColor,
              );
            },
            child: AppIcons.addIcon,
          ),
        ),
      ),
    );
  }
}
