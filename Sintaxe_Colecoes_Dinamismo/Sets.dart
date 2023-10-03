void main(){

//escolherMeioTransporte(0); //Dessa maneira estamos chamando a função por um número inteiro, o que não faz muito sentido
escolherMeioTransporte(Transporte.skate); //Dessa maneira, utilizando o Enum, podemos chamar por um elemento dentro da lista dele.

//Cria uma coleção de registros visitados sem repetição
Set<String> registrosVisitados = <String>{};
registrosVisitados = registrarDestinos("São Paulo", registrosVisitados);
registrosVisitados = registrarDestinos("Rio de Janeiro", registrosVisitados);
registrosVisitados = registrarDestinos("Londres", registrosVisitados);
registrosVisitados = registrarDestinos("São Paulo", registrosVisitados);
print(registrosVisitados);
//receber destino


}

//O Set funciona parecido com uma lista, ele irá criar um 'banco de dados' com registros de objetos. Mas, diferente da lista ele não adiciona um dado igual
Set<String>registrarDestinos(String destino, Set<String> banco){

 //Sintaxe para um set.
banco.add(destino);
return banco;

}

void escolherMeioTransporte(Transporte locomocao){ 

switch(locomocao){ //Pode substituir o IF, 
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

enum Transporte{ //Cria uma lista para ser comparada com um nome;
  carro,
  bike,
  andando,
  skate

}