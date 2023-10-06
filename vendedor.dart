import 'funcionario.dart';

class Vendedor extends Funcionario {
  double? meta;
  double? venda;
  double? bonus = 10;

  Vendedor({ String? nome, 
  String? cargo, 
  int? cpf, 
  double? salario, 
  int? idade, 
  double? bonus  }) 
  :super(bonus: bonus, 
  nome: nome, 
  cargo: cargo, 
  salario: salario, 
  cpf: cpf, 
  idade: idade){}
}
