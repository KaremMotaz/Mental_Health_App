import 'package:flutter/material.dart';

import 'font_weight_helper.dart';

abstract class AppStyles {
  static const TextStyle extraBold26 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeightHelper.extraBold,
  );
  static const TextStyle bold22 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeightHelper.bold,
  );
  static const TextStyle semiBold15 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeightHelper.semiBold,
  );
  static const TextStyle medium15 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeightHelper.medium,
  );
}
