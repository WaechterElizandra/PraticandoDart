import 'dart:io';
import 'funcionario.dart';
import 'gerente.dart';

void main() {
  //criando instâncias das classes Funcionario e Gerente
  Funcionario funcionarioQualquer = new Funcionario(nome: "Kate Kaplan");
  Gerente gerenteChato = new Gerente(nome: "Raymond Reddington");

  //Iniciando o Diálogo
  print(">-- Você chega no trabalho e vai até a sala do seu chefe.");
  print(">-- Seu chefe está na porta.");
  print(">-- Seu chefe diz: Quem é você?");
  print("Digite seu nome:");

  //lê a linha de entrada do usuário e armazena o valor lido na variável nome
  String nome = stdin.readLineSync()!;

  //Continuando o Diálogo
  print(">-- Seu chefe diz: O que você quer?");
  print("Digite 1 para aumento.");
  print("Digite 2 para reconhecimento.");
  print("Digite 3 para ferias.");

  int tentativa = 0;

  //laço de repetição while
  while (true) {
    if (tentativa >= 4) {
      print(">-- Seu chefe diz: Você não entendeu ainda? Está demitido!");
      break;
    }

    String? funcionarioQuer = stdin.readLineSync();

    // interação entre o funcionário e o gerente
    if (funcionarioQuer == "1") {
      gerenteChato.pensarNoAumento(nome);
      tentativa += 1;
    } else if (funcionarioQuer == "2") {
      gerenteChato.pensarNoReconhecimento(nome);
      tentativa += 1;
    } else if (funcionarioQuer == "3") {
      gerenteChato.pensarNasFerias(nome);
      tentativa += 1;
    } else {
      print(">-- Seu chefe diz: Não entendi. O que você que?");
      tentativa += 1;
    }
  }
}
