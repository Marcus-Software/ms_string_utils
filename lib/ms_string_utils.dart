library ms_string_utils;

part './src/camel_case.dart';
part './src/capitalize_sentence.dart';
part './src/capitalize_word.dart';
part './src/count_lines.dart';
part './src/count_matches.dart';
part './src/count_sentences.dart';
part './src/count_words.dart';
part './src/diff.dart';
part './src/has_mastch.dart';
part './src/invert_case.dart';
part './src/is_datetime_iso_8601.dart';
part './src/is_number.dart';
part './src/map_matches.dart';
part './src/snake_case.dart';
part './src/template.dart';
part './src/common_regexp.dart';

final _toCamelCase = toCamelCase;
final _fromCamelCase = fromCamelCase;
final _isCamelCase = isCamelCase;

extension MSStringUtil on String {
  String toCamelCase() => _toCamelCase(this);
  String fromCamelCase() => _fromCamelCase(this);
  bool isCamelCase() => _isCamelCase(this);
}
