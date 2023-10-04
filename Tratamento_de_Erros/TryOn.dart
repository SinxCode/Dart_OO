void main(){
  print('Started Main');
  functionOne();
  print("Finished Main");

}

//Utilizando Try On
void functionOne(){
  print('Started Function F01');
    try {
        functionTwo();  
    }
    
    on FormatException{ //O try on tem essa sintaxe, ele serve para quando já esperamos algum tipo específico de erro/exceção. Nesse de caso de Formato.
                        //Ele não precisa necessariamente ser utilizado somente no código bruto onde pode acontecer o erro. Nesse caso estamos tratando
                        //um erro que ocorreria na função 2 dentro da função 1
      
      print('Foi capturada dentro da FunctionOne.');
    }
  functionTwo();
  print('Finished F01');
}

void functionTwo(){
  print('Started Function F02');

  for (int i = 1; i <= 5; i++) {
    print(i);
    double amount = double.parse('Not a number');
  }
  print('Finished F02');
}