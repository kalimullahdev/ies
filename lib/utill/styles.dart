import 'package:flutter/material.dart';
import 'package:ies/utill/color_resources.dart';
import 'package:ies/utill/dimensions.dart';

class Styles {
  static final List<BoxShadow> boxShadow = [
    BoxShadow(
      color: Colors.black.withOpacity(0.17),
      spreadRadius: 1,
      blurRadius: 7,
      offset: const Offset(0, 3), // changes position of shadow
    ),
  ];

  static const BoxDecoration boxDecoration = BoxDecoration(
    color: ColorResources.whiteColor,
    borderRadius: BorderRadius.all(
      Radius.circular(12),
    ),
  );
  static final BoxDecoration boxDecorationWithShadow = BoxDecoration(
    color: ColorResources.whiteColor,
    boxShadow: Styles.boxShadow,
    borderRadius: const BorderRadius.all(
      Radius.circular(12),
    ),
  );
}

const defaultRegular = TextStyle(
  // fontFamily: 'default',
  fontSize: Dimensions.FONT_SIZE_DEFAULT,
  fontWeight: FontWeight.w400,
);

const defaultMedium = TextStyle(
  // fontFamily: 'default',
  fontSize: Dimensions.FONT_SIZE_DEFAULT,
  fontWeight: FontWeight.w500,
);

const defaultBold = TextStyle(
  // fontFamily: 'default',
  fontSize: Dimensions.FONT_SIZE_DEFAULT,
  fontWeight: FontWeight.w700,
);
const defaultRegularLarge = TextStyle(
  // fontFamily: 'default',
  fontSize: Dimensions.FONT_SIZE_LARGE,
  fontWeight: FontWeight.w700,
);
