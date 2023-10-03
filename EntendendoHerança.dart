void main(){


String nome = 'Laranja';
double peso = 100.2;
String cor = 'Verde e Amarela';
String sabor = 'Doce e cítrica';
int diasDesdeColheita = 30;
//bool isMadura;

Fruta fruta01 = Fruta(nome, peso, cor, sabor, diasDesdeColheita); //Está alimentando a classe conforme as variáveis acima / criando o objeto fruta01

Fruta fruta02 = Fruta("Uva", 0.2, "Roxa", "Doce", 5); //Alimentando a classe  através do construtor/ criando o objeto fruta02

print(fruta01.nome); //Por conta da criação da classe, podemos referenciar qualquer dado pelo nome, e não pelo indice como em listas.
print(fruta01); //irá imprimir "instace of Fruta", pois fruta01 é um objeto dentro da classe Fruta. 
                //Quando printamos fruta01.nome estamos acessando a PROPRIEDADE "nome" do OBJETO fruta01 do qual estamos INSTANCIANDO.

print(fruta02.nome);
print(fruta02);

fruta01.estaMadura(30);
fruta02.estaMadura(10);

//-------------------------------------------------------------------------------------------------------------------------------------------------------

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

class Fruta{ 

String nome;
double peso;
String cor;
String sabor;
int diasDesdeColheita;
bool? isMadura; 


Fruta(this.nome, this.peso, this.cor, this.sabor,this.diasDesdeColheita, {this.isMadura}); 


estaMadura(int diasParaMadura){
  isMadura = diasDesdeColheita >= diasParaMadura; 
  print('A sua $nome foi colhida há $diasDesdeColheita dias, e precisa de $diasParaMadura para poder comer. Ela estámadura? $isMadura');

}

}


class Alimento{
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);

}

class Legumes{

    String nome;
    double peso;
    String cor;
    bool isprecisaCozinhar;

    Legumes(this.nome, this.peso, this.cor, this.isprecisaCozinhar);

}

class Citricas{
  String nome;
  double peso;
  String cor;
  int diasDesdeColheita;
  bool? isMadura;
  double nivelAzedo;

  Citricas(this.nome, this.peso, this.cor, this.diasDesdeColheita, this.nivelAzedo);

}

class Nozes{
  String nome;
  double peso;
  String cor;
  int diasDesdeColheita;
  bool? isMadura;
  double porcentagemDeOleoNatural;

  Nozes(this.nome, this.peso, this.cor, this.diasDesdeColheita, this.porcentagemDeOleoNatural);

}

//Nas Classes criadas acimas, há diversas propriedades que se repetem como "nome", "peso", "cor", "isMadura"
//Para resolver esse problema, facilitar e diminuir o nosso código podemos usar HERANÇAS
//Herança permite que classes compartilhem propriedades e métodos, através de (literalmente) "heranças".
//O principal objetivo de usar herança é reaproveitar código. Isso é feito usando o conceito de “generalização” e de “especificação”,
//onde a classe-mãe (também chamada de superclasse) possui, em geral, propriedades e métodos mais generalistas, 
//enquanto as classes-filha (também chamadas de subclasses) tornam as propriedades e métodos, recebidos pela superclasse, específicos para seus objetivos.
