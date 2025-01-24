import 'package:elevate/Core/utils/app_colors.dart';
import 'package:elevate/Core/utils/toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Core/shared_widget/error_screen.dart';
import '../../../../../Core/utils/app_logger.dart';
import '../../view_model/home_cubit/home_cubit.dart';
import 'product_list_view_item.dart';
import 'shimmer_view.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state is ProductLoadedFailureState) {
          showToast(title: state.message, color: AppColors.redColor);
        }
      },
      builder: (context, state) {
        if (state is ProductLoadedState) {
          return Wrap(
            runSpacing: 10.h,
            spacing: 7.w,
            children: List.generate(
              state.products.length,
              (index) => ProductListViewItem(
                productModel: state.products[index],
              ),
            ),
          );
        } else if (state is ProductLoadedFailureState) {
          AppLogger.print("Failure State Message: ${state.message}");
          return ErrorScreen(
            errorMessage: state.message,
            onPressed: () => context.read<HomeCubit>().fetchProducts(),
          );
        } else {
          return Wrap(
            runSpacing: 10.h,
            spacing: 7.w,
            children: List.generate(
              8,
              (index) => ShimmerView(),
            ),
          );
        }
      },
    );
  }
}
