import 'dart:io';

void main(){
  print('Started Main');
  functionOne();
  print("Finished Main");

}

//Utilizando Try On Catch
void functionOne(){
  print('Started Function F01');
    try {
        functionTwo();  
    }
    
    on FormatException catch(e) { //Essa é a sintax para o try on catch, normalmente utilizamos um objeto chamado E para instanciar a classe do erro.
      
      print('Foi capturada dentro da FunctionOne.');
      print(e.message);
      print(e.source);
      print(e.message);
      
    }on Exception catch(e){ //Utilizar Try on + Exception irá pegar qualquer tipo de exceção.
      print('Uma IOeXCPETION FOI ENCONTRADA.');
      e.toString();
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