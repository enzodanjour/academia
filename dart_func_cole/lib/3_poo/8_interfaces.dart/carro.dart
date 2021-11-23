
// classe abstrata pois tem metodos implementados
abstract class ICarroAbstrato {
  void velocidadeMaxima(){

  }
}
// isso é uma interface pois não tem metodo implementado
abstract class ICarro {
  abstract int portas;//atributos abstratos
  abstract int rodas;
  abstract String motor;
  int velocidadeMaxima();
}