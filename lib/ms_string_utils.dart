library ms_string_utils;

part './src/camel_case.dart';
part './src/capitalize_sentence.dart';
part './src/capitalize_word.dart';
part './src/common_regexp.dart';
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

final _fromCamelCase = fromCamelCase;
final _isCamelCase = isCamelCase;
final _toCamelCase = toCamelCase;
final _capitalizeSentences = capitalizeSentences;
final _capitalizeWord = capitalizeWord;
final _capitalizeWords = capitalizeWords;

extension MSStringUtil on String {
  String toCamelCase([bool firstUpperCase = false]) =>
      _toCamelCase(this, firstUpperCase);

  String fromCamelCase() => _fromCamelCase(this);

  bool isCamelCase() => _isCamelCase(this);

  String capitalizeSentences(
          {bool ignoreWordsCapitalized = false,
          bool ignoreWordsInUpperCase = false,
          List<String> ignoreList = const []}) =>
      _capitalizeSentences(this,
          ignoreWordsInUpperCase: ignoreWordsInUpperCase,
          ignoreWordsCapitalized: ignoreWordsCapitalized,
          ignoreList: ignoreList);

  String capitalizeWord() => _capitalizeWord(this);

  String capitalizeWords() => _capitalizeWords(this);
}
