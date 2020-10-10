part of '../ms_string_utils.dart';

final firstCharacterRegExp = RegExp(r'^.{1,1}');

final camelCaseRegExp = RegExp(r'((^[A-z]|[A-Z]{1,1})[a-z]*)');
