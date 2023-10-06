import 'funcionario.dart';

class Atendente extends Funcionario{
  Atendente({ String? nome, 
  String? cargo, 
  int? cpf, 
  double? salario, 
  int? idade, 
  double? bonus  }) 
  ///Após a lista de parâmetros do construtor, há uma chamada para o construtor da superclasse usando a palavra "super". 
  //O construtor da classe Atendente está chamando o construtor da classe pai e passando valores para seus parâmetros correspondentes.
  :super(bonus: bonus, 
  nome: nome, 
  cargo: cargo, 
  salario: salario, 
  cpf: cpf, 
  idade: idade) {}
}