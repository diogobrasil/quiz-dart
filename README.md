# Quiz de Programação e Dart

Projeto desenvolvido para o **Desafio 2 da Trilha Mobile (Mais Robotic)**: *"Fazendo meu Quiz com Dart"*.

## Sobre o projeto

Aplicação de console em Dart com 8 perguntas de múltipla escolha (alternativas A–D) sobre Programação e a linguagem Dart.

### Progresso — Dia 1 de 3
- [x] Instalação do Dart SDK e configuração do `PATH`
- [x] Criação da estrutura oficial do projeto com `dart create quiz_dart`
- [x] Organização das 8 perguntas em `lib/perguntas.dart`
- [x] Configuração do repositório Git local e remoto no GitHub
- [ ] Lógica de execução do quiz em `bin/quiz_dart.dart` *(Dia 2)*

## Estrutura do projeto

```text
quiz_dart/
├── bin/
│   └── quiz_dart.dart       # Ponto de entrada da aplicação (lógica no Dia 2)
├── lib/
│   ├── perguntas.dart       # Lista com as 8 perguntas, opções A–D e resposta correta
│   └── quiz_dart.dart       # Biblioteca padrão gerada pelo template
├── test/
│   └── quiz_dart_test.dart  # Testes automatizados
├── analysis_options.yaml    # Regras de análise estática (package:lints)
├── CHANGELOG.md
├── pubspec.yaml
└── README.md
```

## Comandos úteis

```bash
# Executar a aplicação
dart run

# Analisar o código
dart analyze

# Formatar o código
dart format .
```
