import 'dart:io';

/// Letras válidas para as 4 alternativas de cada pergunta do quiz.
const List<String> letrasAlternativas = ['A', 'B', 'C', 'D'];

/// Quantidade de pontos somados à pontuação total a cada acerto.
const int pontosPorAcerto = 10;

/// Lê e valida a resposta digitada pelo usuário no terminal.
///
/// Usa um laço `while (true)` para repetir a solicitação até que o usuário
/// informe uma letra válida (`A`, `B`, `C` ou `D`, maiúscula ou minúscula).
/// Retorna o índice correspondente na lista [letrasAlternativas] (`0` a `3`).
int lerResposta() {
  while (true) {
    stdout.write('Sua resposta: ');
    final entrada = stdin.readLineSync();

    // Validação contra entrada nula ou apenas espaços em branco.
    if (entrada == null || entrada.trim().isEmpty) {
      print('Digite uma letra entre A e D.');
      continue;
    }

    // Normaliza a entrada removendo espaços extras e convertendo para maiúscula.
    final letra = entrada.trim().toUpperCase();
    final indice = letrasAlternativas.indexOf(letra);

    // Se a letra existir em ['A', 'B', 'C', 'D'], retorna o índice encontrado.
    if (indice != -1) {
      return indice;
    }

    print('Opção inválida. Digite A, B, C ou D.');
  }
}

/// Retorna uma mensagem personalizada conforme o percentual de acertos.
///
/// Faixas de desempenho:
/// - `100%`: acertou todas as perguntas;
/// - `>= 60%`: bom conhecimento de Dart;
/// - `>= 40%`: bom começo;
/// - `< 40%`: incentivo para continuar praticando.
String mensagemFinal(int pontuacao, int pontuacaoMaxima) {
  final double percentual = pontuacao / pontuacaoMaxima;

  // Estrutura condicional que escolhe o feedback final pelo percentual obtido.
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
