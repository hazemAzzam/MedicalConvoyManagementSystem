import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:responsive_layout/presentation/resources/responsive/app_dimensions.dart';

import 'color_manager.dart';
import 'font_manager.dart';
import 'styles_manager.dart';
import 'values_manager.dart';

ThemeData getApplicationTheme(BuildContext context) {
  return ThemeData(
    // main colors
    scaffoldBackgroundColor: ColorManager.white,

    primaryColor: ColorManager.primary,

    primaryColorLight: ColorManager.primary,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,
    splashColor: ColorManager.secondary, // ribble effect color
    // fontFamily: context.locale == englishLocal ? 'Roboto' : 'Roboto',
    // cardView theme
    // TODO: add cardView theme.

    appBarTheme: AppBarTheme(
      systemOverlayStyle:
          const SystemUiOverlayStyle(statusBarIconBrightness: Brightness.light),
      color: ColorManager.secondary,
      elevation: AppSize.s4,
      shadowColor: ColorManager.lightPrimary,
      titleTextStyle: getRegularTextStyle(context,
          color: ColorManager.white, fontSize: FontSize.s16),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            const EdgeInsets.symmetric(horizontal: AppPadding.p4, vertical: 0)),
        minimumSize: MaterialStateProperty.all<Size>(
          const Size(
            AppSize.s100,
            AppSize.s45,
          ),
        ),
        side: MaterialStateProperty.all<BorderSide?>(
          const BorderSide(color: ColorManager.secondary, width: 0.5),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s2),
          ),
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all<double?>(0.0),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s2),
          ),
        ),
        // minimumSize: MaterialStateProperty.all<Size>(
        //   const Size(
        //     double.infinity,
        //     AppSize.s45,
        //   ),
        // ),
        backgroundColor:
            MaterialStateProperty.all<Color?>(ColorManager.primary),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(
        // vertical: AppDimensions.padding!,
        horizontal: AppPadding.p14,
      ),
      hintStyle: const TextStyle(color: ColorManager.lightGrey),
      border: const OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.lightGrey),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s2)),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.lightGrey),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s2)),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.primary),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s2)),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.error),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s2)),
      ),
      disabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s2)),
        borderSide: BorderSide(color: ColorManager.primary),
      ),
      focusedErrorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.lightGrey),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s2)),
      ),
    ),
    textTheme: TextTheme(
      displaySmall: getLightTextStyle(context, color: ColorManager.grey),
      headlineMedium: getBoldTextStyle(context, color: ColorManager.primary),
      displayMedium: getMediumTextStyle(context, color: ColorManager.black),
      titleMedium: getRegularTextStyle(context, color: ColorManager.black),
    ),
  );
}
