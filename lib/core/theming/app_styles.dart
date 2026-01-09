import 'package:flutter/material.dart';
import 'package:mental_health_app/core/helpers/alpha_from_percent.dart';
import 'font_weight_helper.dart';

abstract class AppStyles {
  static TextStyle h0 = TextStyle(
    fontSize: 50,
    fontWeight: FontWeightHelper.extraBold,
    fontFamily: "Nunito",
    color: Colors.white,
    letterSpacing: -1,
    shadows: [
      Shadow(
        color: Colors.black.withAlpha(alphaFromPercentage(25)),
        offset: const Offset(0, 4),
        blurRadius: 4,
      ),
    ],
  );
  // h1 with shadow
  static TextStyle h1WithShadow = TextStyle(
    fontSize: 26,
    fontWeight: FontWeightHelper.extraBold,
    fontFamily: "Nunito",
    letterSpacing: -1,
    height: 0.9,
    color: Colors.white,
    shadows: [
      Shadow(
        color: Colors.black.withAlpha(alphaFromPercentage(25)),
        offset: const Offset(0, 4),
        blurRadius: 4,
      ),
    ],
  );
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
  static TextStyle pPlayfulWithShadow = TextStyle(
    fontSize: 15,
    fontWeight: FontWeightHelper.extraBold,
    fontFamily: "Nunito",
    letterSpacing: -0.2,
    shadows: [
      Shadow(
        color: Colors.black.withAlpha(alphaFromPercentage(25)),
        offset: const Offset(0, 2),
        blurRadius: 2,
      ),
    ],
  );
  // p
  static const TextStyle p = TextStyle(
    fontSize: 15,
    fontWeight: FontWeightHelper.medium,
    fontFamily: "SFPro",
  );
  static TextStyle pWithShadow = TextStyle(
    fontSize: 15,
    fontWeight: FontWeightHelper.medium,
    fontFamily: "SFPro",
    shadows: [
      Shadow(
        color: Colors.black.withAlpha(alphaFromPercentage(25)),
        offset: const Offset(0, 2),
        blurRadius: 4,
      ),
    ],
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
