import 'dart:io';

void main(){
  print('Started Main');
  functionOne();
  print("Finished Main");

}

//Utilizando Try Catch
void functionOne(){
  print('Started Function F01');
  try {
       functionTwo();  
      }
  catch(exception, stackTrace) //É possível utilizar o Try Catch direto, sem necessidade do 'on' e sem precisar especificar um erro.
    { 
      print('UM ERRO FOI ENCONTRADO.');
      print(exception); //printa o tipo de erro.
      print(stackTrace); //O StackTrace é o rastro da pilha, útil para encaminhar para servidores que armazenam log de erros.
      rethrow; //Faz o tratamento, contudo propaga o erro para as pilhas inferiores.
    }
  finally // O Finally assim como no python, retorna um valor independente se houve erro ou não.
    {
      print('Chegou no Finally');
    }
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