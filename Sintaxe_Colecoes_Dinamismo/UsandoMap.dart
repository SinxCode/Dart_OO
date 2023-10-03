void main(){

Pessoa pessoaSinx = Pessoa('Sinx', 24, true);
Map<String, dynamic> mapSinx = pessoaSinx.toMap();

print(mapSinx);

}

class Pessoa{
  String nome;
  int idade;
  bool estaAutenticada;

  Pessoa(this.nome, this.idade, this.estaAutenticada);

  //Criando método para alimentar o dicionário
   Map<String,dynamic> toMap(){
    return {
      "nome": this.nome,
      "idade": this.idade,
      "estaAutenticada": this.estaAutenticada
    };
  }

  
}