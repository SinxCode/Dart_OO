import 'Transporte.dart';
import 'Viagem.dart';

main(){

 
Viagem viagemMaio = Viagem(locomocao: Transporte.aviao);
print(viagemMaio.consultarTotalLocaisVisitados); //chamando o método get (da propriedade encapsulada '_totalLocaisVisitados')

viagemMaio.visitar("Museu"); //Adicionando um local visitado
print(viagemMaio.consultarTotalLocaisVisitados); //Chamando o método para verificar quantos locais foram visitados.

viagemMaio.alterarLocaisVisitados = 10; //Utilizando o método de atualizar a propriedade privada. Utiliza-se se o = + novo valor quando se trata de um 'set'
                                        //diferente dos métodos comuns que passamos a informação via parâmetro entre parenteses.

print(viagemMaio.consultarTotalLocaisVisitados); //Verificando o novo total de lugares visitados.
}