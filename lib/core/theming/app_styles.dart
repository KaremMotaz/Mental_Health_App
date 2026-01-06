import 'package:flutter/material.dart';

import 'font_weight_helper.dart';

abstract class AppStyles {
  // h1
  static const TextStyle h1 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeightHelper.extraBold,
    fontFamily: "Nunito",
    letterSpacing: -1,
  );
  // h2
  static const TextStyle h2 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeightHelper.extraBold,
    fontFamily: "Nunito",
    letterSpacing: -0.2,
  );
  // h3
  static const TextStyle h3 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeightHelper.extraBold,
    fontFamily: "Nunito",
    letterSpacing: -0.2,
  );
  // p-playful
  static const TextStyle pPlayful = TextStyle(
    fontSize: 15,
    fontWeight: FontWeightHelper.extraBold,
    fontFamily: "Nunito",
    letterSpacing: -0.2,
  );
  // p
  static const TextStyle p = TextStyle(
    fontSize: 15,
    fontWeight: FontWeightHelper.medium,
    fontFamily: "SFPro",
  );
  // s-playful
  static const TextStyle sPlayful = TextStyle(
    fontSize: 12,
    fontWeight: FontWeightHelper.extraBold,
    fontFamily: "Nunito",
    letterSpacing: -0.2,
  );
  // s
  static const TextStyle s = TextStyle(
    fontSize: 12,
    fontWeight: FontWeightHelper.medium,
    fontFamily: "SFPro",
  );
}
