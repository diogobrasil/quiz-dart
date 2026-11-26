import 'dart:io';

/// Letras válidas para as alternativas do quiz.
const List<String> letrasAlternativas = ['A', 'B', 'C', 'D'];

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
