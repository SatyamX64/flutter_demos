import 'models/person.dart';

class Helper {
  static runCode() {
    var person = Person((p) => p
      ..id = 10
      ..name = 'Rock');
    person = person.rebuild((p) => p..name = 'John');
    print(person.toString());
  }
}
