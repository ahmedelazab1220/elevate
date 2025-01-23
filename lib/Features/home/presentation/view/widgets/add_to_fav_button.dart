import 'package:flutter/material.dart';

import '../../../../../Core/utils/app_colors.dart';
import '../../../../../Core/utils/app_icons.dart';
import '../../../../../Core/utils/toast.dart';

class AddToFavButton extends StatefulWidget {
  const AddToFavButton({super.key});

  @override
  State<AddToFavButton> createState() => _AddToFavButtonState();
}

class _AddToFavButtonState extends State<AddToFavButton> {
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: 0,
      child: IconButton(
        onPressed: () {
          showToast(
              title: 'Added to favourites', color: AppColors.primaryColor);
          setState(() {
            isFav = !isFav;
          });
        },
        icon: CircleAvatar(
          backgroundColor: AppColors.secondaryColor,
          child: isFav ? AppIcons.favIcon : AppIcons.favBorderIcon,
        ),
      ),
    );
  }
}
