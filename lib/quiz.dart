import 'dart:io';

/// Letras válidas para as alternativas do quiz.
const List<String> letrasAlternativas = ['A', 'B', 'C', 'D'];

/// Pontuação atribuída a cada resposta correta.
const int pontosPorAcerto = 10;

/// Lê a resposta do usuário e repete a pergunta até receber
/// uma letra válida (A, B, C ou D). Retorna o índice da opção.
int lerResposta() {
  while (true) {
    stdout.write('Sua resposta: ');
    final entrada = stdin.readLineSync();

    if (entrada == null || entrada.trim().isEmpty) {
      print('Digite uma letra entre A e D.');
      continue;
    }

    final letra = entrada.trim().toUpperCase();
    final indice = letrasAlternativas.indexOf(letra);
    if (indice != -1) {
      return indice;
    }
    print('Opção inválida. Digite A, B, C ou D.');
  }
}

/// Mensagem personalizada de acordo com o desempenho do usuário.
String mensagemFinal(int pontuacao, int pontuacaoMaxima) {
  final double percentual = pontuacao / pontuacaoMaxima;
  if (percentual == 1.0) {
    return 'Parabéns! Você acertou todas as perguntas!';
  } else if (percentual >= 0.6) {
    return 'Muito bem! Você tem um bom conhecimento de Dart. Continue praticando!';
  } else if (percentual >= 0.4) {
    return 'Bom começo! Revise os conceitos e tente novamente.';
  } else {
    return 'Continue praticando para melhorar!';
  }
}
