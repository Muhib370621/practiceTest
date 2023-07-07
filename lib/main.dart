import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:task/controller/task1Controller.dart';
import 'package:task/core/routes/appRoutes.dart';
import 'package:task/core/routes/routeNames.dart';
import 'package:task/core/utils/appColors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
          ),
          useMaterial3: true,
        ),
        // home:  MainScreen(),
        initialRoute: RouteNames.task2,
        getPages: AppRoutes.routes,
      );
    });
  }
}

class MainScreen extends StatelessWidget {
   MainScreen({super.key});

  final List textList = ["Task 1", "Task 2", "Task 3", "Task 4"];


  @override
  Widget build(BuildContext context) {
    final Task1Controller task1controller = Get.put(Task1Controller());
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      InkWell(
                        onTap: () {
                          // actionList[index];
                          if (index == 0) {
                            Get.toNamed(RouteNames.task1);
                            // String value =  LocalStorage.readString(key: LocalStorageKeys.userID).toString();
                            //
                            // // if(kDebugMode){
                            // print(value);
                          }
                          if (index == 1) {
                            Get.toNamed(RouteNames.task2);
                            // Prompts.riggerPopup();
                          }
                          if (index == 2) {
                            Get.toNamed(RouteNames.task3);
                            // Prompts.riggerPopup();
                          }
                          if (index == 3) {
                            Get.toNamed(RouteNames.task4);
                            // Prompts.riggerPopup();
                          }
                        },
                        child: Container(
                          height: 16.h,
                          width: 80.w,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                AppColors.mainColor,
                                AppColors.mainColorDark,
                              ],
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                23.sp,
                              ),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              textList[index],
                              style: TextStyle(
                                color: AppColors.pureWhite,
                                fontWeight: FontWeight.w700,
                                fontSize: 20.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                    ],
                  );
                })

          ],
        ),
      ),
    );
  }
}
