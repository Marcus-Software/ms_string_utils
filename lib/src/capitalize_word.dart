part of '../ms_string_utils.dart';

String capitalizeWord(String value) {
  assert(value != null);
  final trimValue = value.trim();
  if (trimValue.isEmpty) return value;
  return value.replaceAll(trimValue,
      trimValue[0].toUpperCase() + trimValue.substring(1).toLowerCase());
}

String capitalizeWords(String value) {
  assert(value != null);
  if (value.isEmpty) return value;
  return value
      .trim()
      .splitMapJoin(' ', onNonMatch: (value) => capitalizeWord(value));
}

bool isLowerCase(String value) {
  return lowerCaseRegExp.hasMatch(value);
}

bool isUpperCase(String value) {
  return upperCaseRegExp.hasMatch(value);
}

bool isWordCapitalized(String value) {
  return capitalizedWordRegExp.hasMatch(value);
}
