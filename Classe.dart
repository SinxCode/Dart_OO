void main(){


String nome = 'Laranja';
double peso = 100.2;
String cor = 'Verde e Amarela';
String sabor = 'Doce e cítrica';
int diasDesdeColheita = 30;
bool isMadura;

Fruta fruta01 = Fruta(nome, peso, cor, sabor, diasDesdeColheita); //Está alimentando a classe conforme as variáveis acima / criando o objeto fruta01

Fruta fruta02 = Fruta("Uva", 0.2, "Roxa", "Doce", 20); //Alimentando a classe  através do construtor/ criando o objeto fruta02

print(fruta01.nome); //Por conta da criação da classe, podemos referenciar qualquer dado pelo nome, e não pelo indice como em listas.
print(fruta01); //irá imprimir "instace of Fruta", pois fruta01 é um objeto dentro da classe Fruta. 
                //Quando printamos fruta01.nome estamos acessando a PROPRIEDADE "nome" do OBJETO fruta01 do qual estamos INSTANCIANDO.

print(fruta02.nome);
print(fruta02);
//-------------------------------------------------------------------------------------------------------------------------------------------------------

}

//Criando uma classe, normalmente começam com letras maiúsculas
//Utilizamos classes quando queremos representar objetos ou conceitos similares, com suas características e ações, para podermos usá-lo várias vezes.
//Para propriedades que não podem ser nulas (diferente da bool) é necessário um construtor, para alimentar as informações de fora.
class Fruta{ 

String nome;
double peso;
String cor;
String sabor;
int diasDesdeColheita;
bool? isMadura; //quando tem o interrogação pode receber valor nulo

//Criando construtor
Fruta(this.nome, this.peso, this.cor, this.sabor,this.diasDesdeColheita, {this.isMadura}); //Sintaxe para criação do construtor. Todas as regras de parâmetnros se aplicam aqui.

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


