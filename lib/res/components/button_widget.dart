
import 'package:flutter/material.dart';
import 'package:new_task/fontFamily.dart';
import 'package:new_task/res/colors/app_color.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget({
    Key? key,
    this.buttonColor = AppColor.primaryButtonColor,
    this.textColor = AppColor.primaryTextColor,
    this.textSize = 40,
    required this.title, required this.onPressed,
    this.height = 50, this.width = 50,
    this.loading  = false

  }) : super(key: key);


  final bool loading;
  final String title;
  final double height, width, textSize;
  final VoidCallback onPressed;
  final Color textColor, buttonColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(05),
        ),
        child: loading ? Center(child: CircularProgressIndicator()):
        Center(child: Text(title,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(color: textColor,
              fontFamily: alviNastaleeqRegular, fontSize: textSize),
        )),
      ),
    );
  }
}
