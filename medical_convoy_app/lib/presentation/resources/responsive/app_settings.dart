import 'package:flutter/widgets.dart' show BuildContext;

import 'app_dimensions.dart';
import 'ui.dart';

class AppSettings {
  static init(BuildContext context) {
    UI.init(context);
    AppDimensions.init();
  }
}
