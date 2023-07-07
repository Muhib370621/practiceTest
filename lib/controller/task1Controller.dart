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

  RxList<ProductModel> productList= <ProductModel>[].obs;
}