
import 'Transporte.dart'; //Importa o Enum Transporte para ser utilizado como propriedade na Classe Viagem

class Viagem{

  //Propriedades Classe Viagem
  static String codigoTrabalho = 'kjswedgkj';
  double dinheiro = 0;
  Transporte locomocao;
  Set<String> registrosVisitados = <String>{};
  Map<String, dynamic> RegistrarPrecos = {}; 
  int _totalLocaisVisitados =0; // o '_' no inicicio do nome da propriedade priva ela, ou seja, a encapsula. Isso significa que no código principal não será possível
                                // visualiza-la, impedindo que qualquer valor indesejado seja atribuido a ela. Para visualiza-la utilizamos o GETTER.

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
  _totalLocaisVisitados += 1; //Incrementado mais um lugar visitado, para cada vez que houver um cadastro de nova visita.

}

  //Método registrar o custo da visita no Map.
  void registrarPrecoVisita(String local, dynamic preco){
  RegistrarPrecos[local] = preco;

}


  //-------GETTER--------
  //PARA PEGAR UMA INFORMAÇÃO PRIVADA, OU ENCAPSULADA, UTILIZAMOS O GET.
  int get consultarTotalLocaisVisitados{ // Essa é a sintaxe do get, não é necessário '()' pois, ele n precisa de parâmetros, ele apenas pega uma informação.

    return _totalLocaisVisitados;        //Dessa maneira, controlamos a informação que quem utilizará a classe terá. Podemos retornar qualquer valor a ela se quisermos.
                                        //escondendo assim, a informação do valor real 0
  }

  //-------SETTER--------
  //PARA ATUALIZAR UMA INFORMAÇÃO PRIVADA, OU ENCAPSULADA, UTILIZAMOS O SET
  void set alterarLocaisVisitados(int novaQtd){ //Essa é a sintaxe do set, diferente do get, como vamos atualizar uma informação, ele espera receber um parâmetro
                                                //ou seja, o que iremos atualizar.
    
    _totalLocaisVisitados = novaQtd; //Substituindo uma nova quantidade de um local visitado.
                                     //Se tratando de um tratamento de propriedade privada, também temos o controle de como essa nova infomração poderá ser passado
                                     //Por exemplo, usando um if dizendo que só pode ser informado números menores do que 10. 

  }

}


