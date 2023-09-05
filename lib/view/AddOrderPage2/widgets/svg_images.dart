
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

svgImageWidget(myImage, [imageColor]){
  return SvgPicture.asset(myImage,
    height: Get.height* 0.05,
    width: Get.width* 0.1,
    colorFilter: ColorFilter.mode(imageColor, BlendMode.srcIn),
  );
}