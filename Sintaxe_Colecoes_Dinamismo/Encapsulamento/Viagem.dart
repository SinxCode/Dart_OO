
import '../Enum.dart';

class Viagem{

  //static serve para conseguirmos acessar algum dado diretamente na estrutura da classe, sem necessitar de instancia (construtor ou método).
  static String codigoTrabalho = 'kjswedgkj';
  double dinheiro = 0;
  Transporte locomocao;
  Set<String> registrosVisitados = <String>{};
  Map<String, dynamic> RegistrarPrecos = {}; 

  Viagem({required this.locomocao});

  printCodigo(){
    print(codigoTrabalho);
  }

  
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
    print('Estou indo para aventura');
    break;

}

}

void visitar(String localVsita){
registrosVisitados.add(localVsita);

}

}


