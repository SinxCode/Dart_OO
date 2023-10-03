void main(){


int diasDesdeColheita = 40;
bool isMadura = funcEstaMadura(diasDesdeColheita); // Utilizando a função, o que fica entre parênteses chamamos de argumentos
//--------------------------------


//CHAMANDO FUNÇÕES

print(isMadura);
print(funcEstaMadura(30)); // argumento é 30

mostrarMadura('Uva', 40); //Chamando função posicional relacionada

mostrarMadura2('Laranja', 40, cor: 'Laranja'); //Para passarmos um parâmetro nomeado opcional, escrevemos o NOME dele (por isso é chamado de nomeado) + : e o valor que queremos atribuir.

mostrarMadura3('Maçã', 20); //Mesmo não informando o parametro de cor, ela recebe 'sem cor' como Padrão.

mostrarMadura3('Acerola', 48, cor: 'Vermelha'); //É obrigatório passsar o padrão nomeado nesse caso
//-------------------------------------------------------------------------------------------------------------------------------------------------------


}


//Toda função recebe parâmetros, apesar de não serem obrigatórios.
//Tipos de parâmetros:
//-Parâmetros Posicionais Obrigatórios
//-Parâmetros nomeados Opcionais
//Parâmetros com "Padrão"
//Modificador "required

//Criando função Posicional Obrigatória (ordem dos parametros n pode ser trocada, nome precisa vir antes de dia no exemplo abaixo e a quantidade de parâmetros são obrigatórias.)

void mostrarMadura(String nome, int dias){  //utilizamos void quando não querermos retornar alguma coisa como um objeto, ele retorna vazio.

if (dias >= 30) 
{
  print("A $nome está madura."); //Como a função é do tipo void ela não utiliza o 'return'
}

else
{
  print("A $nome não está madura.");
}

}


//Criando função Nomeadas Opcionais 

void mostrarMadura2(String nome, int dias, {String? cor }){  //Para passar um parametro nomeado colocamos entre chaves.
                                                             //colocamos o ? na String ele é opcional (por conta do nullsafety do dart (strings n recebem valores nulos e a função precisa ter essa possibilidade)
if (dias >= 30) 
{
  print("A $nome está madura."); //Como a função é do tipo void ela não utiliza o 'return'
}
else
{
  print("A $nome não está madura.");
}

if (cor !=null) {          //Verificamos se a string cor não é nula, ou seja caso o usuário não passe esse parâmetro opcional.
  print('A $nome é $cor');

}

}

void mostrarMadura3(String nome, int dias, {String cor = 'Sem cor'}){  //Para passar um parametro com padrão, utilizamos o ' = '
                                                                       // Nesse caso ela não é mais nullsafety (como  ? na string)
                                                                       //Caso não seja passado o parametro cor, ele receberá 'Sem cor' como PADRÃO.
if (dias >= 30) 
{
  print("A $nome está madura."); //Como a função é do tipo void ela não utiliza o 'return'
}
else
{
  print("A $nome não está madura.");
}

//Não é ncessário verificar se é nulo, pois a stringn é mais nullsafety
  print('A $nome é $cor');


}


//Criando função Required

void mostrarMadura4(String nome, int dias, {required String cor }){  //Para passar um parametro required colocamos 'required'.
                                                                     //O required diz que o parâmetro nominado cor é OBRIGATÓRIO.
if (dias >= 30) 
{
  print("A $nome está madura."); //Como a função é do tipo void ela não utiliza o 'return'
}
else
{
  print("A $nome não está madura.");
}

 //Não é ncessário verificar se é nulo, pois a stringn é mais nullsafety
  print('A $nome é $cor');

}


//criando função
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





