import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({
    super.key,
    required this.errorMessage,
    this.onPressed,
  });

  final String errorMessage;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.error_outline,
          size: 50.w,
          color: Colors.red,
        ),
        SizedBox(height: 10.h),
        Text(
          'Oops! Something went wrong.',
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10.h),
        Text(
          errorMessage,
          style: TextStyle(
            fontSize: 14.sp,
            color: Colors.grey,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20.h),
        ElevatedButton(
          onPressed: onPressed,
          child: Text(
            'Retry',
            style: TextStyle(fontSize: 14.sp),
          ),
        ),
      ],
    );
  }
}
