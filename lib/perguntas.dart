/// Lista de mapas com as 8 perguntas do Quiz de Programação e Dart.
///
/// Cada pergunta possui:
/// - `pergunta`: enunciado da questão;
/// - `opcoes`: lista com 4 alternativas (A, B, C e D);
/// - `correta`: índice da resposta correta (0 = A, 1 = B, 2 = C, 3 = D).
final List<Map<String, dynamic>> perguntas = [
  {
    'pergunta': 'Qual palavra-chave é usada em Dart para declarar uma variável cujo valor não pode ser alterado depois de atribuído?',
    'opcoes': ['var', 'final', 'late', 'dynamic'],
    'correta': 1, // B) final
  },
  {
    'pergunta': 'Qual tipo de dado em Dart representa um número inteiro?',
    'opcoes': ['double', 'String', 'int', 'bool'],
    'correta': 2, // C) int
  },
  {
    'pergunta': 'Qual estrutura é usada para armazenar uma coleção ordenada de valores em Dart?',
    'opcoes': ['Map', 'List', 'Set', 'Queue'],
    'correta': 1, // B) List
  },
  {
    'pergunta':
        'Qual comando lê uma linha digitada pelo usuário no terminal em Dart?',
    'opcoes': ['print()', 'stdin.readLineSync()', 'stdout.write()', 'input()'],
    'correta': 1, // B) stdin.readLineSync()
  },
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
  {
    'pergunta': 'Em Dart, qual símbolo é usado para interpolar uma variável dentro de uma String?',
    'opcoes': ['%', '&', '\$', '#'],
    'correta': 2, // C) $
  },
  {
    'pergunta': 'Qual é a saída de print(10 % 3); em Dart?',
    'opcoes': ['3', '1', '3.33', '0'],
    'correta': 1, // B) 1 (resto da divisão de 10 por 3)
  },
  {
    'pergunta': 'Qual das opções abaixo é uma estrutura condicional em Dart?',
    'opcoes': ['switch', 'loop', 'repeat', 'foreach'],
    'correta': 0, // A) switch
  },
];
