import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_styles.dart';

abstract class ThemeManager {
  static ThemeData getAppTheme() {
    return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        centerTitle: true,
        titleTextStyle: AppStyles.bold22.copyWith(color: Colors.black),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.black,
        ),
      ),
    );
  }
}
