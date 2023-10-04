import 'Exceptions/bank_controller_exceptions.dart';
import 'controllers/bank_controller.dart';
import 'models/account.dart';

void main(){

  //Criandoo banco
  BankController bankController = BankController();

  //Adicionando contas
  bankController.addAccount(id: 'Sinx', account: Account(name: 'Sinx Stars', balance: 2000, isAuthenticated: true));
  bankController.addAccount(id: 'Honey', account: Account(name: 'Honey Bunny', balance: 1000, isAuthenticated: true));

  //Fazendo transferência
  try{
      bool result = bankController.makeTransfer(idSender: 'Sin', idReceiver: 'Honey', ammount: 50);
      //observando resultado
  print(result);
  } on SenderIdInvalidException catch(e){
    print('O ID "${e.idSender}" do remetente não é um ID válido!');

    
  }
  

}

