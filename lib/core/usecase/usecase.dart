import 'dart:typed_data';

import 'package:flutter/foundation.dart';


abstract class UseCase<Type, Params> {
  Future<Type> call({Params? params});
}

class NoParams {}


