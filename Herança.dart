void main(){


//String nome = 'Laranja';
//double peso = 100.2;
//String cor = 'Verde e Amarela';
//String sabor = 'Doce e cítrica';
//int diasDesdeColheita = 30;
//bool isMadura;

//Fruta fruta01 = Fruta(nome, peso, cor, sabor, diasDesdeColheita); //Está alimentando a classe conforme as variáveis acima / criando o objeto fruta01

//Fruta fruta02 = Fruta("Uva", 0.2, "Roxa", "Doce", 5); //Alimentando a classe  através do construtor/ criando o objeto fruta02

//print(fruta01.nome); //Por conta da criação da classe, podemos referenciar qualquer dado pelo nome, e não pelo indice como em listas.
//print(fruta01); //irá imprimir "instace of Fruta", pois fruta01 é um objeto dentro da classe Fruta. 
                //Quando printamos fruta01.nome estamos acessando a PROPRIEDADE "nome" do OBJETO fruta01 do qual estamos INSTANCIANDO.

//print(fruta02.nome);
//print(fruta02);

//fruta01.estaMadura(30);
//fruta02.estaMadura(10);
//-------------------------------------------------------------------------------------------------------------------------------------------------------

//Criando objetos para as classes após a herança:
Legumes mandioca1 = Legumes('Macaxeira', 1200, 'Marrom', true);
Fruta banana1 = Fruta('Banana', 75, 'Amarela', 'Doce', 12);
Nozes macadamia1 = Nozes('Macadâmia', 2, 'Branco Amarelado', 'Doce', 20, 35);
Citricas limao1 = Citricas('Limão', 100, 'Verde', 'Azedo', 5, 9);

//Todos os objetos conseguem acessar o método "printAlimento" pois esse método foi criado na Classe mãe de todas as classes "Alimento"
mandioca1.printAlimento();
banana1.printAlimento();
mandioca1.printAlimento();
macadamia1.printAlimento();
limao1.printAlimento();

mandioca1.cozinhar();
limao1.fazerSuco();

// mandioca1.fazerSuco(); //Não é possível acessas o método fazer suco, pois Legumes não herda nada de Fruta
// limao1.cozinhar();     //Não é possível acessas o método cozinhar, pois Fruta não herda nada de Legumes /







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



//As propriedades dessa classe se repetem em todas as outras
//portanto ela seria a CLASSE MÃE.
class Alimento{
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);

  void printAlimento(){
    print('Este(a) $nome pesa $peso gramas e é $cor');
  }

}

class Fruta extends Alimento{ 


String sabor;
int diasDesdeColheita;
bool? isMadura; 


Fruta(String nome, double peso, String cor, this.sabor,this.diasDesdeColheita, {this.isMadura})
:super(nome, peso, cor);



estaMadura(int diasParaMadura){
  isMadura = diasDesdeColheita >= diasParaMadura; 
  print('A sua $nome foi colhida há $diasDesdeColheita dias, e precisa de $diasParaMadura para poder comer. Ela estámadura? $isMadura');

}

//A propriedade nome está vindo da classe mãe.
void fazerSuco(){
  print('Você fez um ótimo suco de $nome');
}


}

//Para referenciar as propriedades de uma classe mãe utilizamos o "extends" + nome da classe mãe
class Legumes extends Alimento{

  //Aqui também havia nome, peso e cor, porém como já estamos herdando de Alimento, não precisamos mais.

    bool isprecisaCozinhar;

    //Agora nonosso construtor, não utilizamos o "this" pois as propriedades nome, peso e cor não estão mais presentes dentro desta classe.
    //ao invés, utilizamos o tipo do dado que está sendo herdado conforme abaixo:
    Legumes(String nome, double peso, String cor, this.isprecisaCozinhar)
    
    //Utilizamos 'super' para referenciar a classe que está herdando, a clase mãe.
    :super(nome, peso, cor); 

    void cozinhar(){
      if (isprecisaCozinhar) {
        print('Pronto, o(a) $nome está cozinhando.');
      }
      else{
        print('Nem precisa cozinhar!');
      }

    }

}

class Citricas extends Fruta{

  double nivelAzedo;

  //Importante lembrar que TODAS as propriedades existentes na classe mãe DEVEM estar presentes no construtor e no super, a menos que sejam booleanas, são opocionais.
  Citricas(String nome, double peso, String cor,String sabor, int diasDesdeColheita, this.nivelAzedo)

  //Apesar de estarmos herdando de Fruta, as propriedades nome, peso e cor ainda vem de Alimento, pois Fruta herdou esses dele.
  :super(nome, peso, cor, sabor, diasDesdeColheita); //o 'isMadura' presente na classe mãe não está aqui, pois é um booleano, é opcional.

  existeRefri(bool existe){
    if (existe){
      print('Existe refrigerante de $nome');
    }

    else{
      print('Não existe refri de $nome');
    }

  }

}

class Nozes extends Fruta{
 
  double porcentagemDeOleoNatural;

  Nozes(String nome, double peso, String cor,String sabor, int diasDesdeColheita, this.porcentagemDeOleoNatural)
  :super(nome, peso, cor, sabor, diasDesdeColheita);


}

