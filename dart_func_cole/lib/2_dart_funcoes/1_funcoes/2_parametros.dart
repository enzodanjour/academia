void main() {
  // Parametros obigatórios por default

  print('A soma de 10 +10 ${somaInteiros(10, 10)}');
  //Parametros nomeados
  print('A soma de 1.0 +30 ${somaDoubles(numero1: 1.0,numero2: 30)}');

  somaIntOpcional(1,1);

  parametrosNormaisComNomeados(10,nome:'Enzo',idade: 22);
  parametrosNormaisComOpcionais(20,'Enzo',22);
}

int somaInteiros(int numero1, int numero2){
  return numero1+numero2;
}
// required define como obrigatório os params
double somaDoubles({required double numero1,required double? numero2}){
  numero2 ??= 0;
  return numero1+numero2;
  // parametros nomeados são nulos por default
  // podem ser promovidos a não nulos
  
}

double somaDoublesDefault({double numero1 = 0, double numero2 =0}){
  return numero1 + numero2;
}

int somaIntOpcional([int numero1 = 0, int numero2 =0]){
  return numero1 + numero2;
}

void parametrosNormaisComNomeados(
  int numero,{required String nome, required int idade} ){}

void parametrosNormaisComOpcionais(
  int numero,[String? nome,int? idade] ){}