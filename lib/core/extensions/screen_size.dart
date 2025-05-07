import 'package:flutter/material.dart';

import '../../config/routes/routes_manager.dart';

extension ScreenSize on MediaQueryData {
  double get w {
    if (rootNavigatorKey.currentState != null) {
      return MediaQuery.of(rootNavigatorKey.currentState!.context).size.width;
    }
    return 0;
  }

  double get h {
    if (rootNavigatorKey.currentState != null) {
      return MediaQuery.of(rootNavigatorKey.currentState!.context).size.height;
    }
    return 0;
  }

  double get topPadding {
    if (rootNavigatorKey.currentState != null) {
      return MediaQuery.of(rootNavigatorKey.currentState!.context).padding.top;
    }
    return 0;
  }

  double get bottomPadding {
    if (rootNavigatorKey.currentState != null) {
      return MediaQuery.of(rootNavigatorKey.currentState!.context)
          .padding
          .bottom;
    }
    return 0;
  }
}
