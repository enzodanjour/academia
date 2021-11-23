/**
 * Dart tem event loop
 */

void main(){
  print('Iniciou o processo');
  m2();
  p2();
  var i = 0;
  while(i < 5){
    print(i);
    i++;
  }
  
  print('finalizou');
}

void m2(){
  print('Funcao 2'); 
}

void p2(){ //processamento em paralelo, já que é assincrono mas não travou a execução
  Future.delayed(Duration(seconds: 2),(){
    print('Processo 2 sendo executado');
  });
}