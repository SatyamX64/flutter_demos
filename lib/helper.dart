import 'models/person.dart';

class Helper {
  static runCode() {
    var person = Person((p) => p
      ..id = 10
      ..name = 'Rock'
      ..gender = Gender.male
      ..skills = ['Python']);
    person = person.rebuild((p) => p
      ..name = 'John'
      ..skills = ['Flutter', 'Dart']);
    print(person.toString());
  }
}
