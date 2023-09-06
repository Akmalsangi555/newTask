import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import '../../res/colors/app_color.dart';
import '../../res/components/button_widget.dart';
import '../../res/routes/routes_name.dart';
import '../../view_model/controllers/toggle_controller.dart';
import 'widgets/customCheckBox.dart';
import 'widgets/dropDownItems.dart';
import 'widgets/dukan_k_paisy.dart';
import 'widgets/input_name_widget.dart';
import 'widgets/input_phone_widget.dart';
import 'widgets/textWidget.dart';

class AddOrderView extends StatefulWidget {
  const AddOrderView({Key? key}) : super(key: key);

  @override
  State<AddOrderView> createState() => _AddOrderViewState();
}

class _AddOrderViewState extends State<AddOrderView> {

  dynamic isSwitched = true;
  bool checkBoxValue = false;
  IconData currentIcon = Icons.star; // Initial icon
  Color currentColor = Colors.yellow; // Initial color

  final ToggleController toggleController = Get.put(ToggleController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.bgColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: Get.height* 0.005, horizontal: Get.width* 0.05),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        textWidget('حسن گلاس', 40, AppColor.textColorLight),
                        textWidget('0000', 30, AppColor.textColorLight),
                        textWidget('عمیر اقبال', 40, AppColor.textColorLight),

                      ],
                    ),
                    Divider(color: AppColor.textColorLight, thickness: 2,),
                    SizedBox(height: Get.height* 0.02),
                    InputNameWidget(),
                    InputPhoneWidget(),
                    DropdownWidget(),
                    toggleWidget(),
                    InputShopWidget(),

                    textWidget('سامان', 36, AppColor.textColorLight),

                     ButtonWidget(title: 'سامان داخل کریں',
                        width: 220,
                        buttonColor: AppColor.whiteColor,
                        textColor: AppColor.bgColor,
                        textSize: 28,
                        onPressed: () {
                          print('clicked');
                          Get.toNamed(RouteName.addOrderScreen2);
                        }
                    ),

                    SizedBox(height: Get.height* 0.01),

                    Row(
                      children: <Widget>[
                        CustomCheckbox(),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: Get.width* 0.08, right: Get.width* 0.18),
                            child: Container(
                              // width: Get.width* 0.5,
                              height: Get.height* 0.055,
                              decoration: BoxDecoration(
                                  color: AppColor.textFillColor,
                                  borderRadius: BorderRadius.circular(05)
                              ),
                              child: TextFormField(
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                    hintText: '',
                                    border: OutlineInputBorder(),
                                    fillColor: AppColor.textFillColor
                                ),

                              ),
                            ),
                          ),
                        ),
                        // Container(),
                        // SizedBox(width: 70),

                      ],
                    ),
                    SizedBox(height: Get.height* 0.01),

                    addedItemsText('سامان , فریج ۔ اےسی ۔ ٹیبل  \n  کرسی 4', 26, AppColor.whiteColor),
                    SizedBox(height: Get.height* 0.01),

                    ButtonWidget(title: 'آرڈر درج کریں',
                        width: 220,
                        buttonColor: AppColor.whiteColor,
                        textColor: AppColor.bgColor,
                        textSize: 28,
                        // textColor: Colors.black,
                        onPressed: () {}
                    ),
                    SizedBox(height: Get.height* 0.01),

                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
  toggleWidget(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FlutterSwitch(
          // duration: Duration(seconds: 1),
          height: 30,
          width: 70,
          padding: 2,
          toggleSize: 20,
          activeColor: AppColor.textColorLight,
          // inactiveColor: AppColor.bgColor,
          toggleColor: AppColor.bgColor,
          inactiveToggleColor: Colors.white,

          value: isSwitched ,
          onToggle: (value) {
            setState(() {
              isSwitched = value;
              print("object $isSwitched");

              // userDetail.covidVaccine=covid?"True":"False";
            });
          },
        ),
        SizedBox(width: 30),
        textWidget(' مقررہ قیمت', 36, AppColor.textColorLight),
      ],
    );
  }
}
