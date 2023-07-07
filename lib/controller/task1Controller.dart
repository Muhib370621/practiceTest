import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/model/Product.dart';

class Task1Controller extends GetxController{

  Rx<TextEditingController> productName =
      TextEditingController().obs;
  Rx<TextEditingController> productDesc =
      TextEditingController().obs;
  Rx<TextEditingController> productPrice =
      TextEditingController().obs;

  RxInt selectedIndex = 0.obs;
  RxList<ProductModel> productList= <ProductModel>[].obs;

  Rx<TextEditingController> editProductName =
      TextEditingController().obs;
  Rx<TextEditingController> editProductDesc =
      TextEditingController().obs;
  Rx<TextEditingController> editProductPrice =
      TextEditingController().obs;
}