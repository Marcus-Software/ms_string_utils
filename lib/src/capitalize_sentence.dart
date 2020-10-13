part of '../ms_string_utils.dart';

String capitalizeSentences(String value,
    {bool ignoreWordsCapitalized = false,
    bool ignoreWordsInUpperCase = false,
    List<String> ignoreList = const []}) {
  return value
      .split(dotSpaceRegExp)
      .map((v) => _capitalify(v,
          ignoreWordsCapitalized: ignoreWordsCapitalized,
          ignoreList: ignoreList,
          ignoreWordsInUpperCase: ignoreWordsInUpperCase))
      .join('. ')
      .trim();
  ;
}

String _capitalify(String value,
        {bool ignoreWordsCapitalized = false,
        bool ignoreWordsInUpperCase = false,
        List<String> ignoreList}) =>
    value.splitMapJoin(
      ' ',
      onNonMatch: (nonMatch) {
        if (nonMatch.isEmpty) return nonMatch;
        if (ignoreWordsCapitalized && isWordCapitalized(nonMatch))
          return nonMatch;
        else if (ignoreWordsInUpperCase && isUpperCase(nonMatch))
          return nonMatch;
        else if (ignoreList?.contains(nonMatch) == true) return nonMatch;
        return nonMatch.toLowerCase();
      },
    ).replaceFirstMapped(
        firstWordRegExp, (match) => capitalizeWord(match.group(1)));
