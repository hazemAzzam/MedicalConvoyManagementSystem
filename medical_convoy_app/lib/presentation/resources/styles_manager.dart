import 'package:flutter/widgets.dart';
// import 'package:responsive_layout/presentation/resources/responsive/app_dimensions.dart';

import 'font_manager.dart';
import 'responsive/app_dimensions.dart';

TextStyle _getTextStyle(
    BuildContext context, double fontSize, FontWeight weight, Color color) {
  return TextStyle(
    fontSize: fontSize,
    // fontFamily: FontConstants.fontFamily,
    // fontFamily: context.locale == englishLocal ? 'Roboto' : 'Roboto',
    height: 1,
    fontWeight: weight,
    color: color,
  );
}

// regular style

TextStyle? getRegularTextStyle(BuildContext context,
    {double? fontSize, required Color color}) {
  fontSize ??= AppDimensions.font(14);
  return _getTextStyle(context, fontSize, FontWeightManager.regular, color);
}
// medium style

TextStyle getMediumTextStyle(BuildContext context,
    {double? fontSize, required Color color}) {
  fontSize ??= AppDimensions.font(15);
  return _getTextStyle(context, fontSize, FontWeightManager.medium, color);
}
// light style

TextStyle getLightTextStyle(BuildContext context,
    {double? fontSize, required Color color}) {
  fontSize ??= AppDimensions.font(12);
  return _getTextStyle(context, fontSize, FontWeightManager.light, color);
}
// semiBold style

TextStyle getSemiBoldTextStyle(BuildContext context,
    {double? fontSize, required Color color}) {
  fontSize ??= AppDimensions.font(12);

  return _getTextStyle(context, fontSize, FontWeightManager.semiBold, color);
}
// Bold style

TextStyle getBoldTextStyle(BuildContext context,
    {double? fontSize, required Color color}) {
  fontSize ??= AppDimensions.font(24);

  return _getTextStyle(context, fontSize, FontWeightManager.bold, color);
}
