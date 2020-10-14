part of '../ms_string_utils.dart';

int countLines(String value) => linesRegExp.allMatches(value).length;

bool isMultiline(String value) => countLines(value) >= 1;

List<String> toLines(String value) => value.split(linesRegExp);
