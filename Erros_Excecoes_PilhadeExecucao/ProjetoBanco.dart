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
      bool result = bankController.makeTransfer(idSender: 'Sinx', idReceiver: 'Honey', ammount: 5000);
      //observando resultado
  
  if (result) {
    print('Transação concluída com sucesso!');
  }

  } on SenderIdInvalidException catch(e){ 
    print(e);
    print('O ID "${e.idSender}" do remetente não é um ID válido!');
    
    
  } on ReceiverInvalidException catch(e){ //é possível utilizar vários 'on' para verificar diferentes tipos de exceções que foram previstas
    print(e);
    print('O ID "${e.idReceiver}" do destinatário não é um ID válido!');

  } on SenderNotAuthenticatedException catch(e){
    print(e);
    print('O usuário remetente de ID "${e.idSender}" não está autenticado!');

  }on SenderBalanceLowerThanAmountException catch (e){
    print(e);
    print('O usuário de ID "${e.idSender}" tentou enviar ${e.ammount} sendo que em sua conta há somente ${e.senderBalance}, logo, pobre!');
  } on Exception { //caso não seja nenhuma das exceções que previmos, utilizamos um Exception comum, que pegará qualquer erro, sem especificação.
    print('Algo deu errado!');
  }
  

}

