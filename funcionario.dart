//Classe Funcionario e seus atributos
class Funcionario {
  String? nome;
  int? idade; //Pq não aceita inteiro
  int? cpf; // String
  double? salario;
  String? cargo;
  double? bonus;

//Construtor da classe Funcionário
  Funcionario(
      {String? this.nome,
      this.cargo,
      this.cpf,
      this.idade,
      this.salario,
      this.bonus}) {}
  
  //método para calcular salario
  double calcularSalario() {
//Verifica se a variável bonus e cargo não são nulas.
    if (this.bonus != null && this.cargo != null) { 
      //Se ambas as condições no if forem verdadeiras o código é executado.
      return this.salario! + (this.bonus! * this.salario!);//calcula o salário com no bônus
    } else {
      print('Seu cargo é inválido, $nome Infeleiz');
      return this.salario!; //retorna o salário atual 
    }
  }
}
