
class Cliente {
  final String nome;
  late String rg;// posteriormente será inicializado

  Cliente({required String nome, required String rg}) : nome = nome {
     this.rg = rg;
  }

}