import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:task/core/utils/appColors.dart';

class CustomActionContainer extends StatelessWidget {
  const CustomActionContainer({
    Key? key,
    required this.buttonText,
    this.onTap,
    required this.textColor,
    required this.backgroundColor,
    this.isLoading = false,
  }) : super(key: key);
  final String buttonText;
  final void Function()? onTap;
  final Color textColor;
  final Color backgroundColor;
  final bool? isLoading;

  // final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        // padding: EdgeInsets.only(top: 0.8.h),
        height: 7.h,
        // width: 35.w,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.all(
            Radius.circular(
              20.sp,
            ),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: isLoading == true,
              child: SizedBox(
                height: 3.h,
                width: 6.w,
                child: const CircularProgressIndicator(
                  color: AppColors.pureWhite,
                ),
              ),
            ),
            Visibility(
              visible: isLoading == false,
              child: Text(
                buttonText,
                style: TextStyle(
                  color: textColor,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
