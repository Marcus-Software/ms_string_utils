part of '../ms_string_utils.dart';

String fromCamelCase(String value) {
  assert(value != null);
  if (!isCamelCase(value)) return value;
  return value
      .trim()
      .replaceAllMapped(camelCaseRegExp, (match) => ' ${match.group(1)}')
      .trim();
}

bool isCamelCase(String value) {
  assert(value != null);
  return !value.trim().contains(' ') && camelCaseRegExp.hasMatch(value);
}

String toCamelCase(String value, [bool firstUpperCase = false]) {
  assert(firstUpperCase != null);
  assert(value != null);
  if (isCamelCase(value)) return value;
  return value // Hello World
      .trim()
      .splitMapJoin(' ',
          onMatch: (Match match) => '',
          onNonMatch: (String nonMatch) => capitalizeWord(nonMatch))
      .replaceFirstMapped(firstCharacterRegExp, (match) {
    return firstUpperCase ? match.group(0) : match.group(0).toLowerCase();
  }).trim();
}
