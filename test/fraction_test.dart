import 'package:flutter_demos/fraction.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // We can run single tests this way
  test('10 divided by 2 should be 5', () {
    final fraction = Fraction(numerator: 10, denominator: 2);
    expect(fraction.toDouble, 5);
  });

  // We usually test for a lot many things together and group them
  group("Fraction class testing", () {
    test("10 divided by 2 should be 5", () {
      final fraction = Fraction(numerator: 10, denominator: 2);
      expect(fraction.toDouble, 5.0);
    });
    test("'negate' should produce opposed signs", () {
      final fraction = Fraction(numerator: 10, denominator: 2);
      fraction.negate();
      expect(fraction.toDouble, -5.0);
    });
  });
}
