
void main(){

Legumes mandioca1 = Legumes('Macaxeira', 1200, 'Marrom', true);
Fruta banana1 = Fruta('Banana', 75, 'Amarela', 'Doce', 12);
Nozes macadamia1 = Nozes('Macadâmia', 2, 'Branco Amarelado', 'Doce', 20, 35);
Citricas limao1 = Citricas('Limão', 100, 'Verde', 'Azedo', 5, 9);

mandioca1.printAlimento();
banana1.printAlimento();
mandioca1.printAlimento();
macadamia1.printAlimento();
limao1.printAlimento();

mandioca1.cozinhar();
limao1.fazerSuco();


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


void fazerSuco(){
  print('Você fez um ótimo suco de $nome');
}


}

//IMPLEMENTANDO CLASSE ABSTRATA
class Legumes extends Alimento implements Bolo{ //Para atribuir uma abastração para classe, chamamos o 'implements'

    bool isprecisaCozinhar;

    Legumes(String nome, double peso, String cor, this.isprecisaCozinhar)
    

    :super(nome, peso, cor); 

    void cozinhar(){
      if (isprecisaCozinhar) {
        print('Pronto, o(a) $nome está cozinhando.');
      }
      else{
        print('Nem precisa cozinhar!');
      }

    }

    @override
    void assar(){
      //colocar mais tempo

    }
    @override
    void fazerMassa(){
        // fazer uma papa com o legume
    }
    @override
    void separarIngredientes(){
      // Ver se o alimento está cozido ou cru
    }

}

class Citricas extends Fruta{

  double nivelAzedo;

  
  Citricas(String nome, double peso, String cor,String sabor, int diasDesdeColheita, this.nivelAzedo)

  
  :super(nome, peso, cor, sabor, diasDesdeColheita); 

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

//--------------------------------------------------------------------------------------------------------------------
//Criando Classe Abstrata

//Abstrato seria um conceito, algo que não conseguimos tocar, mas entender, por exemplo o conceito 'Fruta', 
//nós comemos maçãs, laranjas, mas não Fruta, Fruta é um conceito que abstraímos.

//Uma vez que conhecemos o funcionamento da herança nas classes, abrimos caminho para entender melhor os contratos ou as famosas interfaces, 
//chamadas no dart de classes abstratas. Essas Classes são simples moldes que indicam métodos obrigatórios para os objetos.
//------------------------------------------------------------------------------------------------------------------------
abstract class Bolo{ //Para criar uma classe abstrata utilizamos o "abstract"
  
  void separarIngredientes(); //Criando método sem chaves, pois não há nada dentro dele
  
 
  void fazerMassa();
  
  
  void assar();




}