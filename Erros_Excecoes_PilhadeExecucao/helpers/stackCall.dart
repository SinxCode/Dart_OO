void stackStart(){
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
      on Exception catch(e){ //Utilizar Try on + Exception irá pegar qualquer tipo de exceção. É útil para quando não se sabe que tipo de erro pode acontecer.
      print('Um ERRO FOI ENCONTRADO.');
      print(e.toString()); //printa o tipo de erro.
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

