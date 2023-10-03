void main(){

escolherMeioTransporte(Transporte.skate); 

Set<String> registrosVisitados = <String>{};
registrosVisitados = registrarDestinos("São Paulo", registrosVisitados);
registrosVisitados = registrarDestinos("Rio de Janeiro", registrosVisitados);
registrosVisitados = registrarDestinos("Londres", registrosVisitados);
registrosVisitados = registrarDestinos("São Paulo", registrosVisitados);
print(registrosVisitados);
//---------------------------------------------------------------------------------------------------------------------------------------------

//CRIAÇÃO DE MAP - FUNCIONA COMO O DICIONÁRIO NO PYTHON
Map<String, dynamic> RegistrarPrecos = {}; // O map, diferente da lista no dart, recebe duas tipagens, ao invés de uma, nesse caso, string e double.
                                          // No map, o padrão é que coloquemos a chave como String, pois iremos armezenar nomes como chaves
                                          // Porém o segundo elemento, é muito comum utilzarmos 'dynamic' pois ele pode ser qualquer outro tipo de dado.

RegistrarPrecos["São Paulo"] = 1200; // Para adicionar valor no Map se utiliza essa sinxtaxe. Temos primeiro um valor de chave, que seria a string 
                                     // e em seguida o que ela recebe como valor double.

RegistrarPrecos["São Paulo"] = 1900; //Para atualizar um valor atribuido a uma chave, basta copia-la e subtistuir o valor.

RegistrarPrecos.remove("São Paulo"); // Para deletar um valor de map, utilizamos o remove e colocamos entre parenteses a chave.

RegistrarPrecos['Londres'] = 'Melhor lugar do mundo'; // Utilizando a segunda tipagem como 'Dynamic' é possível registrar cada chave com um tipo de dado diferente.



RegistrarPrecos["Rio de Janeiro"] = 1500; 
print(RegistrarPrecos);
print(RegistrarPrecos['São Paulo']); // Nesse caso, o map retornará o valor que está em SP, logo, 1900


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