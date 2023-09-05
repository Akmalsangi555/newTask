

import 'package:get/get.dart';
import 'package:new_task/res/assets/image_assets.dart';

class Data {
  final String itemTitle;
  final String itemIcon1, itemIcon2;

  Data({required this.itemTitle, required this.itemIcon1, required this.itemIcon2});
}

class ListController extends GetxController {
  RxList<Data> dataList = <Data>[].obs;

  var selectedIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    fetchData(); // Fetch or initialize your data here
  }

  void fetchData() {
    // Simulating data fetching
    List<Data> fetchedData = [
      Data(itemTitle: 'منی ریفریجریٹر', itemIcon1: ImageAssets.addImageIcon, itemIcon2: ImageAssets.subtractImageIcon,),
      Data(itemTitle: 'ریفریجریٹر', itemIcon1: ImageAssets.addImageIcon, itemIcon2: ImageAssets.subtractImageIcon,),
      Data(itemTitle: 'فریزر', itemIcon1: ImageAssets.addImageIcon, itemIcon2: ImageAssets.subtractImageIcon,),
      Data(itemTitle: 'واشنگ مشین', itemIcon1: ImageAssets.addImageIcon, itemIcon2: ImageAssets.subtractImageIcon,),
      Data(itemTitle: 'واشنگ مشین ڈرائر کے ساتھ', itemIcon1: ImageAssets.addImageIcon, itemIcon2: ImageAssets.subtractImageIcon,),
      Data(itemTitle: 'اے سی', itemIcon1: ImageAssets.addImageIcon, itemIcon2: ImageAssets.subtractImageIcon,),
      Data(itemTitle: 'واٹر ڈسپنسر', itemIcon1: ImageAssets.addImageIcon, itemIcon2: ImageAssets.subtractImageIcon,),
      Data(itemTitle: 'ایل سی ڈی ٹی وی', itemIcon1: ImageAssets.addImageIcon, itemIcon2: ImageAssets.subtractImageIcon,),
      Data(itemTitle: 'پنکھا', itemIcon1: ImageAssets.addImageIcon, itemIcon2: ImageAssets.subtractImageIcon,),
      Data(itemTitle: 'مائیکرو ویو', itemIcon1: ImageAssets.addImageIcon, itemIcon2: ImageAssets.subtractImageIcon,),
      Data(itemTitle: 'چولہا', itemIcon1: ImageAssets.addImageIcon, itemIcon2: ImageAssets.subtractImageIcon,),
    ];

    dataList.value = fetchedData;
  }
}
