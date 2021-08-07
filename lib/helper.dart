import 'dart:convert';

import 'package:flutter_demos/models/address.dart';
import 'package:flutter_demos/models/skills.dart';
import 'package:flutter_demos/models/user.dart';

class Helper {
  static runCode() {
    var user = User("John", Address("Lakeview", "California"),
        Skills(8, ['flutter', 'kotlin']));
    print(user.toJson());
  }
}
