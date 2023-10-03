void main(){

//escolherMeioTransporte(0); //Dessa maneira estamos chamando a função por um número inteiro, o que não faz muito sentido
escolherMeioTransporteEnum(Transporte.carro); //Dessa maneira, utilizando o Enum, podemos chamar por um elemento dentro da lista dele.

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

  if (locomocao ==Transporte.carro){
    print('Vou de carro para aventura!');

  }
  else if (locomocao == Transporte.bike){
    print('Vou de carro para aventura!');

  }
  else{
        print('Vou para aventura!');

  }
}

enum Transporte{ //Cria uma lista para ser comparada com um nome;
  carro,
  bike,
  andando,
  skate,
  aviao,
  patins,
  trem

}