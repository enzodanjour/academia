void main(){
//arrow
//funcoes anonimas
  (){//declara a funcao
    print('Funcao anonima');
  }();//efetua a funcao
  var name= 'Enzo';
  var funcaoQualquer = (){
    print('chamou a funcao');
    return '2000';
  };
  print(name.runtimeType);
  print(funcaoQualquer);
  print('Iniciando chamada');
  chamarUmaFuncaoDeUmParametro((nome){
    if(nome.isEmpty){
      print('Nome veio vazio');
    }else{
      print(nome);
    }
  });
  print('Finalizando chamada');
}
// 3 partes 
// 1 tipo de retorno 
// 2 nome
// 3 parametros(normais,nomeados e opcionais)
int somaInteiros(int numero1,int numero2) => numero1+numero2;// arrow function

void chamarUmaFuncaoDeUmParametro(FuncaoQueRecebeNome funcaoQueRecebeNome){
  var calculo = 1+1;
  print('Finalizando funcao');
  var nomeCOmpleto = 'eNZO';
  print('Finalizando instancia');
  funcaoQueRecebeNome(nomeCOmpleto);
}
void funx2(FuncaoQueRecebeNomeComplexo nome){}

typedef FuncaoQueRecebeNome = void Function(String name);// definindo um tipo
typedef FuncaoQueRecebeNomeComplexo = String Function(String nome,String nomeCompleto, {
  required String? x,
  required String? x2,
  int? qq,
});