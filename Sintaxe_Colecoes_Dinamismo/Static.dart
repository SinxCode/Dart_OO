void main(){

escolherMeioTransporte(Transporte.skate); 

Set<String> registrosVisitados = <String>{};
registrosVisitados = registrarDestinos("São Paulo", registrosVisitados);
registrosVisitados = registrarDestinos("Rio de Janeiro", registrosVisitados);
registrosVisitados = registrarDestinos("Londres", registrosVisitados);
registrosVisitados = registrarDestinos("São Paulo", registrosVisitados);
print(registrosVisitados);
//---------------------------------------------------------------------------------------------------------------------------------------------

Map<String, dynamic> RegistrarPrecos = {}; 
RegistrarPrecos["São Paulo"] = 1200; 
RegistrarPrecos["São Paulo"] = 1900; 

RegistrarPrecos.remove("São Paulo"); 

RegistrarPrecos['Londres'] = 'Melhor lugar do mundo'; 

RegistrarPrecos["Rio de Janeiro"] = 1500; 
print(RegistrarPrecos);
print(RegistrarPrecos['São Paulo']); 

//Viagem viagemHoje = Viagem();

Viagem.codigoTrabalho; // chamando diretamente da classe.
print(Viagem.codigoTrabalho);


}

class Viagem{

  //static serve para conseguirmos acessar algum dado diretamente na estrutura da classe, sem necessitar de instancia (construtor ou método).
  static String codigoTrabalho = 'kjswedgkj';
  double dinheiro = 0;


}



Set<String>registrarDestinos(String destino, Set<String> banco){


banco.add(destino);
return banco;

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

enum Transporte{ 
  carro,
  bike,
  andando,
  skate

}