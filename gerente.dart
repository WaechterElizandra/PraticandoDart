import 'dart:math';

import 'funcionario.dart';

class Gerente extends Funcionario {
  String? setor;

  Gerente({String? this.setor, 
  String? nome, 
  String? cargo, 
  int? cpf, 
  double? salario, 
  int? idade, 
  double? bonus }) 
  //Após a lista de parâmetros do construtor, há uma chamada para o construtor da superclasse usando a palavra "super". 
  //O construtor da classe Gerente está chamando o construtor da classe pai e passando valores para seus parâmetros correspondentes.
  :super(cargo: cargo, 
  cpf: cpf, 
  salario: salario, 
  idade: idade, 
  bonus: bonus, 
  nome: nome) {}

  void pensarNoAumento(nomeDoInfeliz) {
    int possibilidade = Random().nextInt(50);
    if (possibilidade == 49) {
      print(
          ">-- Seu chefe diz: $nomeDoInfeliz vou pensar se voce merece infeliz.");
      print(">-- Seu chefe diz: $nomeDoInfeliz vou pensar no seu aumento.");
    } else {
      print(">-- Seu chefe diz: Infeliz pare de gastar meu tempo.");
  }}
 
  void pensarNoReconhecimento( nomeDoInfeliz) {
    int possibilidade = Random().nextInt(50);
    if (possibilidade == 49) {
      print(">-- Seu chefe diz: $nomeDoInfeliz vou pensar se voce merece infeliz.");
    } else {
      print(">-- Seu chefe diz: Reconhecimento? Pare de gastar meu tempo.");
    }
  }

  void pensarNasFerias( nomeDoInfeliz) {
    int possibilidade = Random().nextInt(50);
    if (possibilidade == 2) {
      print(">-- Seu chefe diz: $nomeDoInfeliz vou pensar se voce tem direito infeliz.");
    } else {
      print(">-- Seu chefe diz: Voce merece, mas estamos com poucas pessoas. Infeliz pare de gastar meu tempo.");
    }
  }
}

