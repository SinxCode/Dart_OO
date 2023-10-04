import '../Exceptions/bank_controller_exceptions.dart';
import '../models/account.dart';

class BankController {

  final Map<String, Account> _database = {}; //Dicionário privado para guardar os dados da classe Account


  //Método para adicionar uma conta e cada uma tendo seu próprio ID
  addAccount({required String id, required Account account}){ 
    _database[id] = account;
  }

   //Método para verificar see o banco de dados contem a id para fazer as verificações
  bool verifyId(String id){
    return _database.containsKey(id);
  }

  //Método para transferir um valor para outra conta 
  bool makeTransfer({required String idSender, required String idReceiver, required double ammount})
  {    
      //Verificar se ID de remetente é válido
      if (!verifyId(idSender)) {
        throw  SenderIdInvalidException(); //lança a exceção para  a classe que irá trata-la.
      }

      //Verificar se ID de destinatário é válido
      if(!verifyId(idReceiver)){
        throw ReceiverInvalidException(); //lança a exceção para  a classe que irá trata-la.

      }

      Account accountSender = _database[idSender]!;
      Account accountReceiver = _database[idReceiver]!;

      //Verificar se o remetente está autenticado
      if (!accountSender.isAuthenticated) {
        throw SenderNotAuthenticatedException();
      }

      //Verificar se o remetente possui saldo suficiente
      if (accountSender.balance < ammount) {
        throw SenderBalanceLowerThanAmountException();
      }

        // Se tudo estiver certo, efetivar transação
        accountSender.balance -=ammount;
        accountReceiver.balance +=ammount;

        return true;

  }

     
       

}