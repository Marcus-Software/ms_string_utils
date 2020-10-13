import 'package:ms_string_utils/ms_string_utils.dart';
import 'package:test/test.dart';

void main() {
  test('must torn any sentence in camel case', () {
    expect(toCamelCase('Hello World'), 'helloWorld');
    expect(toCamelCase('Hello World', true), 'HelloWorld');
  });

  test('must torn any camel case in sentence', () {
    expect(fromCamelCase('helloWorld'), 'hello World');
    expect(fromCamelCase('HelloWorld'), 'Hello World');
  });

  test('must validate if a string is camel case', () {
    expect(isCamelCase('HelloWorld'), isTrue);
    expect(isCamelCase('Hello World'), isFalse);
  });
}
