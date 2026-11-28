/// Banco de questões do Quiz de Programação e Dart.
///
/// Armazena uma lista de mapas (`List<Map<String, dynamic>>`) onde cada mapa
/// representa uma pergunta com três chaves:
/// - `'pergunta'`: texto do enunciado exibido ao usuário;
/// - `'opcoes'`: lista de 4 alternativas na ordem A, B, C e D;
/// - `'correta'`: índice (0 a 3) da alternativa correta em `'opcoes'`
///   (0 = A, 1 = B, 2 = C, 3 = D).
final List<Map<String, dynamic>> perguntas = [
  // Pergunta 1: imutabilidade de variáveis em tempo de execução.
  {
    'pergunta': 'Qual palavra-chave é usada em Dart para declarar uma variável cujo valor não pode ser alterado depois de atribuído?',
    'opcoes': ['var', 'final', 'late', 'dynamic'],
    'correta': 1, // B) final
  },
  // Pergunta 2: tipos primitivos/numéricos em Dart.
  {
    'pergunta': 'Qual tipo de dado em Dart representa um número inteiro?',
    'opcoes': ['double', 'String', 'int', 'bool'],
    'correta': 2, // C) int
  },
  // Pergunta 3: coleções ordenadas em Dart.
  {
    'pergunta': 'Qual estrutura é usada para armazenar uma coleção ordenada de valores em Dart?',
    'opcoes': ['Map', 'List', 'Set', 'Queue'],
    'correta': 1, // B) List
  },
  // Pergunta 4: entrada de dados pelo terminal (dart:io).
  {
    'pergunta':
        'Qual comando lê uma linha digitada pelo usuário no terminal em Dart?',
    'opcoes': ['print()', 'stdin.readLineSync()', 'stdout.write()', 'input()'],
    'correta': 1, // B) stdin.readLineSync()
  },
  // Pergunta 5: estrutura de repetição for.
  {
    'pergunta': 'O que o laço "for" faz em Dart?',
    'opcoes': [
      'Executa um bloco de código uma única vez',
      'Repete um bloco de código um número determinado de vezes',
      'Interrompe a execução do programa',
      'Declara uma nova variável',
    ],
    'correta': 1, // B) repete o bloco
  },
  // Pergunta 6: interpolação de variáveis em Strings.
  {
    'pergunta': 'Em Dart, qual símbolo é usado para interpolar uma variável dentro de uma String?',
    'opcoes': ['%', '&', '\$', '#'],
    'correta': 2, // C) $
  },
  // Pergunta 7: operador módulo (%) para resto da divisão.
  {
    'pergunta': 'Qual é a saída de print(10 % 3); em Dart?',
    'opcoes': ['3', '1', '3.33', '0'],
    'correta': 1, // B) 1 (resto da divisão de 10 por 3)
  },
  // Pergunta 8: estruturas condicionais em Dart.
  {
    'pergunta': 'Qual das opções abaixo é uma estrutura condicional em Dart?',
    'opcoes': ['switch', 'loop', 'repeat', 'foreach'],
    'correta': 0, // A) switch
  },
];
