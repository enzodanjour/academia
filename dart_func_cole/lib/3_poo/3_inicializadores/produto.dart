
class Produto {
  final int? _id;
  final String? nome;
  final double? _preco;

  Produto({required int? id,required this.nome,required double preco}) 
  : _id = id,
  _preco = preco;
  // {
  //   //já foi inicializado
  //   _id = id;
  //   _preco = preco;
  // }
  
  //ele é inicializado durante a execução
  factory Produto.factory({required int? id,required String nome,required double preco}){
    return Produto(id: id, nome: nome, preco: preco);
  }
}