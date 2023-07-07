import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


// ignore: must_be_immutable
class CustomTextField extends StatefulWidget {
  CustomTextField(
      {Key? key,
      required this.hintText,
      // required this.svgPath,
      // required this.wantObscure,
      // required this.isMaxLines,
      required this.fieldColor,
      this.controller,
      required this.isNumberKeyboardType,
      })
      : super(key: key);
  final String hintText;
  // final String svgPath;
  // final bool wantObscure;
  // final bool isMaxLines;
  final bool isNumberKeyboardType;
  final Color fieldColor;
  TextEditingController? controller;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    // final LoginController loginController = Get.put(LoginController());
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          // width: 95.w,
          // height: 7.h,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(
                20,
              ),
            ),
          ),
          child: TextField(
            keyboardType: widget.isNumberKeyboardType?TextInputType.number:TextInputType.text,
            controller: widget.controller,
            style: TextStyle(fontSize: 15.sp),
            // maxLines: widget.isMaxLines == true ? 10 : 1,
            // obscureText: widget.wantObscure == false
            //     ? false
            //     : loginController.isObscure.value,
            decoration: InputDecoration(
              alignLabelWithHint: true,
              // contentPadding: EdgeInsets.only(
              //     top: widget.svgPath == "" && widget.isMaxLines == false
              //         ? 0
              //         : 2.5.h,
              //     left: widget.svgPath == "" ? 2.w : 0),
              // alignLabelWithHint: true,
              // prefixIcon: widget.svgPath != ""
              //     ? Visibility(
              //         visible: widget.svgPath != "",
              //         child: SvgPicture.asset(
              //           widget.svgPath,
              //           fit: BoxFit.scaleDown,
              //         ),
              //       )
              //     : null,
              // suffixIcon: widget.wantObscure == true
              //     ? Obx(() {
              //         return IconButton(
              //           onPressed: () {
              //             setState(() {
              //               loginController.isObscure.value =
              //                   !loginController.isObscure.value;
              //               print(loginController.isObscure.value);
              //             });
              //           },
              //           icon: loginController.isObscure.value == true
              //               ? Icon(
              //                   AppIcons.visibilityOff,
              //                   size: 20.sp,
              //                 )
              //               : Icon(
              //                   AppIcons.visibilityOn,
              //                   size: 20.sp,
              //                 ),
              //         );
              //       })
              //     : null,
              hintText: widget.hintText,
              fillColor: widget.fieldColor
              // AppColors.mainColor.withOpacity(0.05)
              ,
              filled: true,
              border: InputBorder.none,
            ),
          )),
    );
  }
}
