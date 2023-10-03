void main(){


int diasDesdeColheita = 40;
bool isMadura = funcEstaMadura(diasDesdeColheita); // Utilizando a função

print(isMadura);
print(funcEstaMadura(30));
//--------------------------------

}

//criando função

bool funcEstaMadura(int dias) // Toda função recebe parâmetros, apesar de não serem obrigatórios.
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



