import 'package:flutter/material.dart';

import '../../config/route/routes_manager.dart';

extension ScreenSize on MediaQueryData {
  double get w {
    if (navigatorKey.currentState != null) {
      return MediaQuery.of(navigatorKey.currentState!.context).size.width;
    }
    return 0;
  }

  double get h {
    if (navigatorKey.currentState != null) {
      return MediaQuery.of(navigatorKey.currentState!.context).size.height;
    }
    return 0;
  }

  double get topPadding {
    if (navigatorKey.currentState != null) {
      return MediaQuery.of(navigatorKey.currentState!.context).padding.top;
    }
    return 0;
  }

  double get bottomPadding {
    if (navigatorKey.currentState != null) {
      return MediaQuery.of(navigatorKey.currentState!.context).padding.bottom;
    }
    return 0;
  }
}
