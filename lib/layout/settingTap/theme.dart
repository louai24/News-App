import 'package:flutter/material.dart';

import '../../color_manager.dart';
ThemeData darktheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: Colors.black,
    primary: Colors.grey[900]!,
    secondary: Colors.white!
  )
);
ThemeData lighttheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
        background: ColorManager.colorOffwhite,
        primary: Colors.grey[900]!,
        secondary: Colors.grey[700]!
    )
);