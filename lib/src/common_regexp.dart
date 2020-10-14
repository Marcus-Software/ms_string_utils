part of '../ms_string_utils.dart';

final camelCaseRegExp = RegExp(r'((^[A-ZÀ-Ýa-zà-ý]|[A-ZÀ-Ý]{1,1})[a-ý]*)');

final capitalizedWordRegExp = RegExp(r'^[A-ZÀ-Ý]{1,1}[a-zà-ý]*$');

final dotSpaceRegExp = RegExp(r' ?\. ?');

final firstCharacterRegExp = RegExp(r'^.{1,1}');

final firstWordRegExp = RegExp(r'(^ ?\w*)');

final linesRegExp = RegExp(r'\n', multiLine: true);

final lowerCaseRegExp = RegExp(r'(^[a-z à-ý]*$)');

final upperCaseRegExp = RegExp(r'(^[A-Z À-Ý]*$)');
