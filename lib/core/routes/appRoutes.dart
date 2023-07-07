import 'package:get/get.dart';
import 'package:task/core/routes/routeNames.dart';
import 'package:task/main.dart';
import 'package:task/view/home/editScreen.dart';
import 'package:task/view/home/task1.dart';
import 'package:task/view/home/task2.dart';
import 'package:task/view/home/task3.dart';
import 'package:task/view/home/task4.dart';


class AppRoutes {
  static final routes = [
    GetPage(
      name: RouteNames.mainScreen,
      page: () =>  MainScreen(),
    ),
    GetPage(
      name: RouteNames.task1,
      page: () =>  const Task1Screen(),
    ),
    GetPage(
      name: RouteNames.task2,
      page: () =>  const Task2Screen(),
    ),
    GetPage(
      name: RouteNames.task3,
      page: () =>  const Task3Screen(),
    ),
    GetPage(
      name: RouteNames.task4,
      page: () =>  const Task4Screen(),
    ),
    GetPage(
      name: RouteNames.editScreen,
      page: () =>  const EditScreen(
      ),
    ),


    //   GetPage(
  //     name: RouteNames.appLoader,
  //     page: () => const AppLoader(),
  //   ),
  //   GetPage(
  //     name: RouteNames.forgotPassword,
  //     page: () => const ForgotPassword(),
  //   ),
  //   GetPage(
  //     name: RouteNames.verifyNumber,
  //     page: () =>  VerificationScreen(),
  //   ),
  //   GetPage(
  //     name: RouteNames.changePassword,
  //     page: () => const ChangePassword(),
  //   ),
  //   GetPage(
  //     name: RouteNames.signUp,
  //     page: () => const SignUp(),
  //   ),
  //   GetPage(
  //     name: RouteNames.mainScreen,
  //     page: () =>  MainScreen(),
  //   ),
  //   GetPage(
  //     name: RouteNames.eventDetailScreen,
  //     page: () =>  const EventDetailScreen(),
  //   ),
  //   GetPage(
  //     name: RouteNames.calendarScreen,
  //     page: () =>   CalendarScreen(),
  //   ),
  //   GetPage(
  //     name: RouteNames.editCalendarScreen,
  //     page: () =>   const EditCalendarDetails(),
  //   ),
  //   GetPage(
  //     name: RouteNames.riggerTicketScreen,
  //     page: () =>     const RiggerTicket(),
  //   ),
  //   GetPage(
  //     name: RouteNames.payDutyForm,
  //     page: () =>    const PayDutyForm(),
  //   ),
  //   GetPage(
  //     name: RouteNames.riggerTicketSecScreen,
  //     page: () =>    const RiggerTicketSec(),
  //   ),
  //   GetPage(
  //     name: RouteNames.transportationTicket,
  //     page: () =>   const TransportationTicket(),
  //   ),
  //   GetPage(
  //     name: RouteNames.transportationTicketSec,
  //     page: () =>   const TransportTicketSec(),
  //   ),
  //   GetPage(
  //     name: RouteNames.transportationTicketThird,
  //     page: () =>    const TransportationTicketThird(),
  //   ),
  //   GetPage(
  //     name: RouteNames.profileScreen,
  //     page: () =>    const ProfileScreen(),
  //   ),
  //   GetPage(
  //     name: RouteNames.draftScreen,
  //     page: () =>    const DraftScreen(),
  //   ),
  ];
}