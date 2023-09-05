
import '../../view/AddOrder/add_order_view.dart';
import '../../view/AddOrderPage2/add_order_page2.dart';
import 'routes_name.dart';
import 'package:get/get.dart';

class AppRoutes {
  static List<GetPage> routes() {
    return [
      GetPage(
          name: RouteName.addOrderScreen1,
          page: () => AddOrderView(),
          transitionDuration: Duration(microseconds: 250),
          transition: Transition.leftToRightWithFade),

      GetPage(
          name: RouteName.addOrderScreen2,
          page: () => AddOrderPage2(),
          transitionDuration: Duration(microseconds: 250),
          transition: Transition.leftToRightWithFade),

    ];
  }
}