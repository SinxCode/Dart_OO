class SenderIdInvalidException implements Exception{   //atrubuindo a classe abstrata execption para dentro da clase. Normalmente usamos 'Exception' no final
                                                      //do nome da Classe.
  static const String report = 'SenderIdInvalidException';
  String idSender;

  SenderIdInvalidException({required this.idSender});

  @override
  String toString(){
    return '$report\nID Sender: $idSender';
  }

} 


class ReceiverInvalidException implements Exception{
  static const String report ='ReceiverInvalidException';
  String idReceiver;

  ReceiverInvalidException({required this.idReceiver});

  @override
  String toString(){
    return '$report\nID Sender: $idReceiver';

}
}

class SenderNotAuthenticatedException implements Exception{
  static const String report = 'SenderNotAuthenticatedException';
  String idSender;

  SenderNotAuthenticatedException({required this.idSender});

   @override
  String toString(){
    return '$report\nID Sender: $idSender';

}
}

class SenderBalanceLowerThanAmountException implements Exception{
  static const String report='SenderBalanceLowerThanAmountException';
  String idSender;
  double senderBalance;
  double ammount;

  SenderBalanceLowerThanAmountException({required this.idSender, required this.senderBalance, required this.ammount});

  @override
  String toString(){
    return "$report\nId Sender: $idSender\nSender Balance $senderBalance\nAmmount $ammount";
  }

}