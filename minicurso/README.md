# Mini curso de Elixir

Neste minicurso você aprenderá na prática a criar um projeto de elixir e resolver problemas utilizando o paradigma funcional.

Fazem parte do escopo:

- Como utilizar o [Mix](https://hexdocs.pm/mix/Mix.html) para criar e testar projetos.
- Como interagir com console exibindo e recuperando entrada de dados do usuário
- Como criar [módulos e funções](https://elixir-lang.org/getting-started/modules-and-functions.html)
- Como utilizar [pattern matching](https://elixir-lang.org/getting-started/pattern-matching.html)
- Como usar combinar pattern matching com [guards](https://hexdocs.pm/elixir/guards.html)
- Como usar o operador [pipe |>](https://elixirschool.com/en/lessons/basics/pipe_operator)
- Como criar funções recursivas
- Como criar e interagir com coleções
- Como controlar o fluxo de código com estruturas de decisão do elixir

Antes de começar:
Você precisa ter o elixir instalado no seu ambiente de desenvolvimento. Caso não tenha acompanhe esse [vídeo](https://youtu.be/TdjBev-il9w) no nosso canal que orienta a instalação de maneira adequada.

# Desafio do curso

## Jogo Adivinhar o número

Vamos criar um jogo para adivinhação de números que tem três níveis de dificuldade. O primeiro nível será um número entre 1 e 10. O segundo será entre 1 e 100 e o terceiro será entre 1 e 1000.

Nossa solução deve perguntar ao usuário, através do console, qual é o nível de dificuldade desejado e em seguida o computador deve escolher um número aleatório dentro do intervalo correspondente ao nível de dificuldade.
Toda a vez que o jogador escolher um número o computador deve dar a ele uma dica indicando se o número é menor ou maior ao escolhido. O computador também deve contar o número de palpites feitos pelo jogador e exibir um comentário respeitando a seguinte regra:

|Palpites| Mensagem|
| 1 | Você consegue mesmo ler mentes!|
|2..4|Muito impressionante.|
|3..6| Você consegue fazer melhor que isso!|
|>7| Mais sorte na próxima.|

