
import '../Enum.dart';

class Viagem{

  //Propriedades Classe Viagem
  static String codigoTrabalho = 'kjswedgkj';
  double dinheiro = 0;
  Transporte locomocao;
  Set<String> registrosVisitados = <String>{};
  Map<String, dynamic> RegistrarPrecos = {}; 

  //Construtor Viagem
  Viagem({required this.locomocao}); //Há somente locomocao, pois os demais já se inicializam de alguma forma, vazios ou em 0.

  //Método para printar o código de trabalho
  printCodigo(){
    print(codigoTrabalho);
  }

  //Método para Escolher o meio de transporte
  void escolherMeioTransporte(Transporte locomocao){ 

  switch(locomocao){ 
    case Transporte.carro:
    print('Vou de carro para aventura.');
    break;

    case Transporte.bike:
    print('Vou de bike para aventura.');
    break;

    case Transporte.andando:
    print('Vou andando para aventura');
    break;

    default:
    print('Estou indo para aventura de qualquer maneira.');
    break;

}

}


  //Método para adicionar um local visitado no Set.
  void visitar(String localVsita){
  registrosVisitados.add(localVsita);

}

  //Método registrar o custo da visita no Map.
  void registrarPrecoVisita(String local, dynamic preco){
  RegistrarPrecos[local] = preco;

}

}


