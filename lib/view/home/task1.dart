import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:task/controller/task1Controller.dart';
import 'package:task/core/utils/appColors.dart';
import 'package:task/model/Product.dart';
import 'package:task/view/components/customActionContainer.dart';
import 'package:task/view/components/customTextField.dart';
import 'package:task/view/prompts.dart';

class Task1Screen extends StatelessWidget {
  const Task1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final Task1Controller task1controller = Get.put(Task1Controller());
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: 90.w,
            child: Obx(() {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Product Add",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  CustomTextField(
                    controller: task1controller.productName.value,
                    hintText: 'Enter Product Name',
                    fieldColor: AppColors.mainColor.withOpacity(
                      0.05,
                    ),
                    isNumberKeyboardType: false,
                  ),
                  CustomTextField(
                    controller: task1controller.productDesc.value,
                    hintText: 'Enter Description',
                    fieldColor: AppColors.mainColor.withOpacity(
                      0.05,
                    ),
                    isNumberKeyboardType: false,
                  ),
                  CustomTextField(
                    controller: task1controller.productPrice.value,
                    hintText: 'Price',
                    fieldColor: AppColors.mainColor.withOpacity(
                      0.05,
                    ),
                    isNumberKeyboardType: true,
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  SizedBox(
                    width: 40.w,
                    child: CustomActionContainer(
                      onTap: () {
                        if (task1controller.productName.value.text == "" ||
                            task1controller.productPrice.value.text == "" ||
                            task1controller.productDesc.value.text == "") {
                          Prompts.showError("Oops!", "Fill The Fields");
                        } else {
                          print(task1controller.productName.value.text);
                          task1controller.productList.add(
                            ProductModel(
                              task1controller.productName.value.text,
                              task1controller.productDesc.value.text,
                              task1controller.productPrice.value.text,
                            ),
                          );
                          Get.back();
                          Prompts.showSuccess("Wow!",
                              "Product is Added to List Tap Task2 to View it");
                          print(task1controller.productList.length);
                        }
                      },
                      buttonText: 'SUBMIT',
                      textColor: AppColors.pureWhite,
                      backgroundColor: AppColors.mainColor,
                    ),
                  ),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}
