String? nome;
void main(){
  var numero = 1.0;
  print(numero);
  numero += 2.0;
  print(numero);
  numero /=2;
  print(numero);

  print(nome);
  //! mesma coisa
  // if(nome == null ){
  //   nome = 'Enzo';
  // }
  nome ??= 'Enzo';

  print(nome);

  

}