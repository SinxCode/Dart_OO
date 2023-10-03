void main(){


int diasDesdeColheita = 40;

int quantosdias = funcQuantosDiasMadura(diasDesdeColheita); //não é possível fazer o cálculo sem a varíavel quantos dias dentro do escop (delimitação) da função main
print(quantosdias);
//-------------------------------------------------------------------------------------------------------------------------------------------------------


}

funcQuantosDiasMadura(int dias){

  int diasParaMadura = 30;
  int quantosDiasFaltam = diasParaMadura - dias;
  return quantosDiasFaltam;

}

void mostrarMadura(String nome, int dias){  

if (dias >= 30) 
{
  print("A $nome está madura."); 
}

else
{
  print("A $nome não está madura.");
}

}

void mostrarMadura2(String nome, int dias, {String? cor }){ 
if (dias >= 30) 
{
  print("A $nome está madura."); 
}
else
{
  print("A $nome não está madura.");
}

if (cor !=null) {         
  print('A $nome é $cor');

}

}

void mostrarMadura3(String nome, int dias, {String cor = 'Sem cor'}){  
if (dias >= 30) 
{
  print("A $nome está madura."); 
}
else
{
  print("A $nome não está madura.");
}


  print('A $nome é $cor');


}

void mostrarMadura4(String nome, int dias, {required String cor }){  
if (dias >= 30) 
{
  print("A $nome está madura."); 
}
else
{
  print("A $nome não está madura.");
}

  print('A $nome é $cor');

}

bool funcEstaMadura(int dias) 
{
  
if (dias >=30) 
{
  return true;
}
else
{
  return false;
}

}


