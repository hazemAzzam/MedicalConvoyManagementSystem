// import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';

enum LanguageType { english, arabic }

const String arabic = "ar";
const String english = "en";
const String assetPathLocalizations = "assets/translations";

const Locale arabicLocal = Locale(arabic, 'SA');
const Locale englishLocal = Locale(english, 'US');
  
// extension LanguageTypeExtension on LanguageType {
//   String getValue() {
//     switch (this) {
//       case LanguageType.arabic:
//         return arabic;
//       default:
//         return english;
//     }
//   }
// }
