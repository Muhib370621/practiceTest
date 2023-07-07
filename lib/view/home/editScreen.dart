import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:task/controller/task1Controller.dart';
import 'package:task/core/utils/appColors.dart';
import 'package:task/view/components/customActionContainer.dart';
import 'package:task/view/components/customTextField.dart';
import 'package:task/view/prompts.dart';

class EditScreen extends StatelessWidget {
  const EditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Task1Controller task1controller = Get.put(Task1Controller());
    return Scaffold(
      body: SafeArea(
        child: Obx(() {
          return Center(
            child: SizedBox(height: 50.h,
              // width: 90.w

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Edit Product",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                    width: 90.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Product Name",
                          style: TextStyle(
                            fontSize: 18.sp,
                          ),
                        ),
                        CustomTextField(
                          controller: task1controller.editProductName.value,
                          hintText: 'Enter Product Name',
                          fieldColor: AppColors.mainColor.withOpacity(
                            0.05,
                          ),
                          isNumberKeyboardType: false,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                    width: 90.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Product Desc",
                          style: TextStyle(
                            fontSize: 18.sp,
                          ),
                        ),
                        CustomTextField(
                          controller: task1controller.editProductDesc.value,
                          hintText: 'Enter Product Desc',
                          fieldColor: AppColors.mainColor.withOpacity(
                            0.05,
                          ),
                          isNumberKeyboardType: false,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                    width: 90.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Product Price",
                          style: TextStyle(
                            fontSize: 18.sp,
                          ),
                        ),
                        CustomTextField(
                          controller: task1controller.editProductPrice.value,
                          hintText: 'Enter Product Price',
                          fieldColor: AppColors.mainColor.withOpacity(
                            0.05,
                          ),
                          isNumberKeyboardType: true,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 40.w,
                    child: CustomActionContainer(
                      onTap: () {
                        if (task1controller.editProductName.value.text == "" ||
                            task1controller.editProductDesc.value.text == "" ||
                            task1controller.editProductPrice.value.text == "") {
                          Prompts.showError("Oops!", "Fill The Fields");
                        } else {


                          print(task1controller.productName.value.text);
                            task1controller
                                .productList[task1controller.selectedIndex.value].productName=
                                task1controller
                                    .editProductName.value.text ;

                            task1controller
                                .productList[task1controller.selectedIndex.value].productDesc=
                                task1controller
                                    .editProductDesc.value.text ;

                            task1controller
                                .productList[task1controller.selectedIndex.value].productPrice=
                                task1controller
                                    .editProductPrice.value.text ;

                          // task1controller.editProductName.value.clear();
                          // task1controller.editProductDesc.value.clear();
                          // task1controller.editProductPrice.value.clear();
task1controller.productList.refresh();
                          Get.back();
                          Prompts.showSuccess("Wow!",
                              "Product is Editted Successfully");
                          print(task1controller.productList.length);

                        }
                      },
                      buttonText: 'SAVE',
                      textColor: AppColors.pureWhite,
                      backgroundColor: AppColors.mainColor,
                    ),
                  ),

                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
