import 'package:quiz_dart/perguntas.dart';
import 'package:quiz_dart/quiz.dart';

/// Ponto de entrada da aplicação de console do Quiz de Programação e Dart.
void main(List<String> arguments) {
  // Variável acumuladora que guarda a pontuação do jogador ao longo do quiz.
  int pontuacao = 0;

  // Cabeçalho inicial com título, instruções de uso e regras de pontuação.
  print('==========================================');
  print('  QUIZ DE PROGRAMAÇÃO E DART');
  print('==========================================');
  print('Responda com a letra da alternativa (A, B, C ou D).');
  print('Cada acerto vale $pontosPorAcerto pontos.');
  print('Total de perguntas: ${perguntas.length}\n');

  // Laço principal: percorre a lista de mapas exibindo uma pergunta por vez.
  for (int i = 0; i < perguntas.length; i++) {
    final pergunta = perguntas[i];
    final List<String> opcoes = pergunta['opcoes'];
    final int correta = pergunta['correta'];

    print('Pergunta ${i + 1}: ${pergunta['pergunta']}');

    // Laço interno: exibe as 4 alternativas acompanhadas das letras A, B, C e D.
    for (int j = 0; j < opcoes.length; j++) {
      print('  ${letrasAlternativas[j]}) ${opcoes[j]}');
    }

    // Leitura e validação da entrada do usuário (aceita apenas A, B, C ou D).
    final int escolha = lerResposta();

    // Pontuação e feedback: soma 10 pontos por acerto ou mostra a resposta certa.
    if (escolha == correta) {
      pontuacao += pontosPorAcerto;
      print('Correta! +$pontosPorAcerto pontos.\n');
    } else {
      print(
        'Errada! A resposta correta é ${letrasAlternativas[correta]}) ${opcoes[correta]}.\n',
      );
    }
  }

  // Cálculo da pontuação máxima possível e exibição do placar e mensagem final.
  final int pontuacaoMaxima = perguntas.length * pontosPorAcerto;
  print('==========================================');
  print('  FIM DO QUIZ!');
  print('  Sua pontuação total: $pontuacao de $pontuacaoMaxima pontos.');
  print('  ${mensagemFinal(pontuacao, pontuacaoMaxima)}');
  print('==========================================');
}
