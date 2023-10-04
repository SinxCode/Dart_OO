class Account{
  String name;
  double balance; //saldo disponível na conta
  bool isAuthenticated;

  //construtor nominal obrigatório
  Account({required this.name, required this.balance, required this.isAuthenticated});

  //Método para atualizar o valor de saldo da conta.
  editBalance({required value}){
    balance = balance + value;

  }

}
  