import 'package:quiz_dart/perguntas.dart';
import 'package:quiz_dart/quiz.dart';

void main(List<String> arguments) {
  int pontuacao = 0;

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
    final int correta = pergunta['correta'];

    print('Pergunta ${i + 1}: ${pergunta['pergunta']}');

    // Exibe as 4 opções com as letras A, B, C e D.
    for (int j = 0; j < opcoes.length; j++) {
      print('  ${letrasAlternativas[j]}) ${opcoes[j]}');
    }

    // Lê a resposta e só aceita A, B, C ou D (maiúscula ou minúscula).
    final int escolha = lerResposta();

    // Estrutura condicional: valida a resposta e atualiza a pontuação.
    if (escolha == correta) {
      pontuacao += pontosPorAcerto;
      print('Correta! +$pontosPorAcerto pontos.\n');
    } else {
      print(
        'Errada! A resposta correta é ${letrasAlternativas[correta]}) ${opcoes[correta]}.\n',
      );
    }
  }

  print('Pontuação acumulada: $pontuacao pontos.');
}
