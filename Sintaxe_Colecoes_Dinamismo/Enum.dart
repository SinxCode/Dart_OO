void main(){

//escolherMeioTransporte(0); //Dessa maneira estamos chamando a função por um número inteiro, o que não faz muito sentido
escolherMeioTransporteEnum(Transporte.skate); //Dessa maneira, utilizando o Enum, podemos chamar por um elemento dentro da lista dele.

}

void escolherMeioTransporte(int locomocao){
  if (locomocao ==0) {
    print('Vou de carro para aventura!');
  }
  else if(locomocao ==1){
    print('Vou de carro para aventura!');
  }
  else{
    print('Vou para aventura!');
  }

}

void escolherMeioTransporteEnum(Transporte locomocao){ 

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