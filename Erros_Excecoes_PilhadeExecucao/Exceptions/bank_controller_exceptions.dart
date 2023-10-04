class SenderIdInvalidException implements Exception{   //atrubuindo a classe abstrata execption para dentro da clase. Normalmente usamos 'Exception' no final
                                                      //do nome da Classe.

  String idSender;

  SenderIdInvalidException({required this.idSender});

} 


class ReceiverInvalidException implements Exception{}

class SenderNotAuthenticatedException implements Exception{}

class SenderBalanceLowerThanAmountException implements Exception{}