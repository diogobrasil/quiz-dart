import 'package:quiz_dart/perguntas.dart';

void main(List<String> arguments) {
  const int pontosPorAcerto = 10;
  const letras = ['A', 'B', 'C', 'D'];

  print('==========================================');
  print('  QUIZ DE PROGRAMAÇÃO E DART');
  print('==========================================');
  print('Responda com a letra da alternativa (A, B, C ou D).');
  print('Cada acerto vale $pontosPorAcerto pontos.');
  print('Total de perguntas: ${perguntas.length}\n');

  // Laço de repetição: percorre todas as perguntas do quiz.
  for (int i = 0; i < perguntas.length; i++) {
    final pergunta = perguntas[i];
    final List<String> opcoes = pergunta['opcoes'];

    print('Pergunta ${i + 1}: ${pergunta['pergunta']}');

    // Exibe as 4 opções com as letras A, B, C e D.
    for (int j = 0; j < opcoes.length; j++) {
      print('  ${letras[j]}) ${opcoes[j]}');
    }
    print('');
  }
}
