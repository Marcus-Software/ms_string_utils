part of '../ms_string_utils.dart';

final camelCaseRegExp = RegExp(r'((^[A-ZÀ-Ýa-zà-ý]|[A-ZÀ-Ý]{1,1})[a-ý]*)');

final capitalizedWordRegExp = RegExp(r'^[A-ZÀ-Ý]{1,1}[a-zà-ý]*$');

final dotSpaceRegExp = RegExp(r' ?\. ?');

final firstCharacterRegExp = RegExp(r'^.{1,1}');

final camelCaseRegExp = RegExp(r'((^[A-z]|[A-Z]{1,1})[a-z]*)');
