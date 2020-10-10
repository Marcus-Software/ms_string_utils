part of '../ms_string_utils.dart';

String toCamelCase(String value, [bool firstUpperCase = false]) {
  if (isCamelCase(value)) return value;
  return value // Hello World
      .trim()
      .splitMapJoin(' ',
          onMatch: (Match match) => '',
          onNonMatch: (String nonMatch) =>
              nonMatch[0].toUpperCase() + nonMatch.substring(1).toLowerCase())
      .replaceFirstMapped(firstCharacterRegExp,
          (match) {
            return firstUpperCase ? match.group(0) : match.group(0).toLowerCase();
          })
      .trim();
}

String fromCamelCase(String value) {
  if (!isCamelCase(value)) return value;
  return value
      .trim()
      .replaceAllMapped(camelCaseRegExp, (match) => ' ${match.group(1)}')
      .trim();
}

bool isCamelCase(String value) {
  return !value.trim().contains(' ');
}
