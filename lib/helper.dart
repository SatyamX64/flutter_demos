import 'dart:convert';

import 'package:flutter_demos/models/user.dart';

class Helper {
  static runCode() {
    var user = User('John Doe', 'john@test.com', false, '007', 13);

    var userJson = user.toJson();
    print(userJson);

    var userJsonString = jsonEncode(user.toJson());
    print(userJsonString);

    String jsonSourceString =
        '{"name":"Rock Doe","email":"rock@test.com","is-adult":false,"id":"006","registration_date_millis":15}';

    var secondUser = User.fromJson(jsonDecode(jsonSourceString));
    print(secondUser.toJson());

    var thirdUser = User.fromJson({
      "name": "Ron Doe",
      "email": "ron@test.com",
      "id": "008",
      "registration_date_millis": 13,
    });
    print(thirdUser.toJson());
  }
}
