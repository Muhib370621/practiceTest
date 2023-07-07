import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:task/controller/task1Controller.dart';
import 'package:task/core/routes/routeNames.dart';
import 'package:task/core/utils/appColors.dart';

class Task2Screen extends StatelessWidget {
  const Task2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final Task1Controller task1controller = Get.put(Task1Controller());
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: SizedBox(
          width: 90.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // SizedBox(width: 20.w,),
                  Text(
                    "Product List",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(width: 2.w,),
                  Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                      onTap: () {
                        Get.toNamed(RouteNames.task1);
                      },
                      child: Container(
                        padding: EdgeInsets.all(10.sp),
                        height: 5.h,
                        width: 35.w,
                        decoration: BoxDecoration(
                          color: AppColors.mainColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              15.sp,
                            ),
                          ),
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              Icon(
                                Icons.add,
                                size: 20.sp,
                                color: AppColors.pureWhite,
                              ),
                              Text(
                                "Add product",
                                style: TextStyle(
                                  fontSize: 16.5.sp,
                                  color: AppColors.pureWhite,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4.h,
              ),
              Obx(() {
                return Column(
                  children: [
                    Visibility(
                      visible: task1controller.productList.isEmpty,
                      child: Text(
                        "No Products Added!",
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    // Text(task1controller.productList.length.toString()),
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount: task1controller.productList.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(12.sp),
                                    // height: 5.h,
                                    width: 65.w,
                                    decoration: BoxDecoration(
                                      color: AppColors.mainColor,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(
                                          15.sp,
                                        ),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              task1controller.productList[index]
                                                  .productName
                                                  .toString(),
                                              style: TextStyle(
                                                fontSize: 20.sp,
                                                color: AppColors.pureWhite,
                                              ),
                                            ),
                                            Text(
                                              task1controller.productList[index]
                                                  .productDesc
                                                  .toString(),
                                              style: TextStyle(
                                                fontSize: 15.sp,
                                                color: AppColors.pureWhite,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          task1controller
                                              .productList[index].productPrice
                                              .toString(),
                                          style: TextStyle(
                                            fontSize: 20.sp,
                                            color: AppColors.pureWhite,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2.w,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Get.toNamed(RouteNames.editScreen);
                                      task1controller
                                              .editProductName.value.text =
                                          task1controller
                                              .productList[index].productName;
                                      task1controller
                                              .editProductDesc.value.text =
                                          task1controller
                                              .productList[index].productDesc;
                                      task1controller
                                              .editProductPrice.value.text =
                                          task1controller
                                              .productList[index].productPrice;
                                      // print(index);
                                      task1controller.selectedIndex.value=index;
                                    },
                                    child: Container(
                                      height: 4.h,
                                      width: 9.w,
                                      decoration: BoxDecoration(
                                        color: AppColors.pureWhite,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(
                                            15.sp,
                                          ),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 2,
                                            blurRadius: 3,
                                            offset: Offset(0,
                                                1), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.edit,
                                          color: AppColors.pureBlack,
                                          size: 18.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2.w,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      task1controller.productList
                                          .removeAt(index);
                                    },
                                    child: Container(
                                      height: 4.h,
                                      width: 9.w,
                                      decoration: BoxDecoration(
                                        color: AppColors.pureBlack,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(
                                            15.sp,
                                          ),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 2,
                                            blurRadius: 3,
                                            offset: Offset(0,
                                                1), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.delete,
                                          color: AppColors.mainColor,
                                          size: 18.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                            ],
                          );
                        }),
                  ],
                );
              }),
            ],
          ),
        ),
      ),
    ));
  }
}
