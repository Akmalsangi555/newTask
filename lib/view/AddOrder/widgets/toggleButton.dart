
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:new_task/res/colors/app_color.dart';

import 'textWidget.dart';

class ToggleButton extends StatefulWidget {
  const ToggleButton({Key? key}) : super(key: key);

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  @override
  Widget build(BuildContext context) {
    dynamic isSwitched = true;

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FlutterSwitch(
          height: 25,
          width: 60,
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
