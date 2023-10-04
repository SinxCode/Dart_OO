class SenderIdInvalidException implements Exception{   //atrubuindo a classe abstrata execption para dentro da clase. Normalmente usamos 'Exception' no final
                                                      //do nome da Classe.

  String idSender;

  SenderIdInvalidException({required this.idSender});

} 


class ReceiverInvalidException implements Exception{
  String idReceiver;

  ReceiverInvalidException({required this.idReceiver});

}

class SenderNotAuthenticatedException implements Exception{
  String idSender;

  SenderNotAuthenticatedException({required this.idSender});
}

class SenderBalanceLowerThanAmountException implements Exception{
  String idSender;
  double senderBalance;
  double ammount;

  SenderBalanceLowerThanAmountException({required this.idSender, required this.senderBalance, required this.ammount});


}