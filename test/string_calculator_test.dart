
import 'package:flutter_test/flutter_test.dart';

import '../lib/string_calculator.dart';

void main() {
  final calculator = StringCalculator();

  test('Empty string ', () {
    expect(calculator.add(''), 0);
  });

  test('Single number', () {
    expect(calculator.add('1'), 1);
  });

  test('Two numbers ', () {
    expect(calculator.add('1,5'), 6);
  });

  test('Multiple numbers', () {
    expect(calculator.add('1,2,3,4'), 10);
  });

  test('new line', () {
    expect(calculator.add('1\n2,3'), 6);
  });

  test('custom delimiter', () {
    expect(calculator.add('//;\n1;2'), 3);
  });

  test('Throws exception for single negative number', () {
    expect(
          () => calculator.add('1,-2'),
      throwsA(
        predicate((e) =>
            e.toString().contains('negative numbers not allowed -2')),
      ),
    );
  });

  test('Throws exception for multiple negative numbers', () {
    expect(
          () => calculator.add('1,-2,-5'),
      throwsA(
        predicate((e) =>
            e.toString().contains('negative numbers not allowed -2,-5')),
      ),
    );
  });
}
