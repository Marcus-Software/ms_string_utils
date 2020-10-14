import 'package:ms_string_utils/ms_string_utils.dart';
import 'package:test/test.dart';

void main() {
  test('must return a number of lines', () {
    expect(
        countLines(
            """Não se espante com a altura do voo. Quanto mais alto, mais longe do perigo.
    Quanto mais você se eleva, mais tempo há de reconhecer uma pane.
    É quando se está próximo do solo que se deve desconfiar.
    """),
        3);
  });
  test('must return true if String is multilines', () {
    expect(isMultiline("""O contrário do pessimismo raramente é o otimismo.
O contrário do pessimismo, se não é a boa intenção de injetar força nos fracos, o que é bonito e faz bem, é quase sempre a idiota."""),
        isTrue);
    expect(
        isMultiline(
            "O contrário do pessimismo raramente é o otimismo.\nO contrário do pessimismo, se não é a boa intenção de injetar força nos fracos, o que é bonito e faz bem, é quase sempre a idiota."),
        isTrue);
    expect(
        isMultiline(
            "Tudo o que um sonho precisa para ser realizado é alguém que acredite que ele possa ser realizado."),
        isFalse);
  });
  test('must return a list with all lines', () {
    expect(toLines('''O poeta é um fingidor.
Finge tão completamente

Que chega a fingir que é dor
A dor que deveras sente.'''), [
      "O poeta é um fingidor.",
      "Finge tão completamente",
      "",
      "Que chega a fingir que é dor",
      "A dor que deveras sente.",
    ]);
  });
}
