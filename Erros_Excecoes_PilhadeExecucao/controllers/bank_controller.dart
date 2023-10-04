import '../models/account.dart';

class BankController {

  final Map<String, Account> _database = {}; //Dicionário privado para guardar os dados da classe Account


  //Método para adicionar uma conta e cada uma tendo seu próprio ID
  addAccount({required String id, required Account account}){ 
    _database[id] = account;
  }

  //Método para transferir um valor para outra conta 
  bool makeTransfer({required String idSender, required String idReceiver, required double ammount})
  {    
      //Verificar se ID de remetente é válido
      if (!verifyId(idSender)) {
        return false;
      }

      //Verificar se ID de destinatário é válido
      if(!verifyId(idReceiver)){
        return false;

      }

      Account accountSender = _database[idSender]!;
      Account accountReceiver = _database[idReceiver]!;

      //Verificar se o remetente está autenticado
      if (!accountSender.isAuthenticated) {
        return false;
      }

      //Verificar se o remetente possui saldo suficiente
      if (accountSender.balance < ammount) {
        return false;
      }

        // Se tudo estiver certo, efetivar transação

        accountSender.balance -=ammount;
        accountReceiver.balance +=ammount;

        return true;

  }

      //Método para verificar see o bancode dados contem a id para fazer as verificações
      bool verifyId(String id){
        return _database.containsKey(id);
      }
       

}