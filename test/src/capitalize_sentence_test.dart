import 'package:ms_string_utils/ms_string_utils.dart';
import 'package:test/test.dart';

void main() {
  test('must capitalize only first word', () {
    expect(capitalizeSentences('roses ARE red, VIOLETS Are blue.'),
        'Roses are red, violets are blue.');
    expect(capitalizeSentences('roses ARE red, VIOLETS Are blue'),
        'Roses are red, violets are blue');
    expect(capitalizeSentences(' i LovE yOu so Much'), 'I love you so much');
    expect(
        capitalizeSentences(
            'roses ARE red, VIOLETS Are blue. i LovE yOu so Much.'),
        'Roses are red, violets are blue. I love you so much.');
    expect(
        capitalizeSentences('roses ARE red, VIOLETS Are blue.',
            ignoreWordsCapitalized: true),
        'Roses are red, violets Are blue.');
  });
}
