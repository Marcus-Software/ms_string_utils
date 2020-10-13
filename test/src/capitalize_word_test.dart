import 'package:ms_string_utils/ms_string_utils.dart';
import 'package:test/test.dart';

void main() {
  test('must capitalize word', () {
    expect(capitalizeWord('hello world'), 'Hello world');
    expect(capitalizeWord('HELLO'), 'Hello');
    expect(capitalizeWord('HeLlO'), 'Hello');
    expect(capitalizeWord('HeLlO'), 'Hello');
    expect(capitalizeWord('i'), 'I');
  });

  test('must capitalize words', () {
    expect(capitalizeWords('hello world'), 'Hello World');
    expect(capitalizeWords('HELLO wORLD'), 'Hello World');
    expect(capitalizeWords('HeLlO wORLD'), 'Hello World');
    expect(capitalizeWords('HeLlO wORLD'), 'Hello World');
  });
}
