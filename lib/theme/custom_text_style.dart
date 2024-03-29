import 'package:flutter/material.dart';
import 'package:rafie_s_tp2/core/utils/size_utils.dart';
import 'package:rafie_s_tp2/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Arial text style
  static get arialBluegray900 => TextStyle(
        color: appTheme.blueGray900.withOpacity(0.53),
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).arial;
  // Label text style
  static get labelLargeBluegray900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray900,
      );
  static get labelLargeOverpassBluegray900 =>
      theme.textTheme.labelLarge!.overpass.copyWith(
        color: appTheme.blueGray900,
      );
  // S text style
  static get sFProDisplayBluegray900 => TextStyle(
        color: appTheme.blueGray900.withOpacity(0.53),
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).sFProDisplay;
  static get sFProDisplayBluegray900Regular => TextStyle(
        color: appTheme.blueGray900,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).sFProDisplay;
  static get sFProDisplayWhiteA700 => TextStyle(
        color: appTheme.whiteA700,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w700,
      ).sFProDisplay;
}

extension on TextStyle {
  TextStyle get overpass {
    return copyWith(
      fontFamily: 'Overpass',
    );
  }

  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }

  TextStyle get arial {
    return copyWith(
      fontFamily: 'Arial',
    );
  }
}
