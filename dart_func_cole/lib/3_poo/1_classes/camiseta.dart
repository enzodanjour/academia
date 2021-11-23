// Atributos(características)
// Comportamentos

// public normal
// private _assim

class Camiseta{
  // atributos de instância
  String? tamanho;
  String? _cor;//privado
  String? marca;
  // atributos de classe, não necessitam de instância
  static const String nome = 'Camiseta';//constantes

  // metodo de classe
  static String recuperarNome() => nome;

  String? get cor => _cor;

  set cor(String? cor){// encapsulado 
    if(cor =='verde'){
      _Camiseta2();
      throw Exception('Não pode ser verde');
    }
  }

  //funções dentro de classes são métodos
  String tipoDeLavagem(){
    if(marca!.toLowerCase() == 'nike'){
      return 'Não pode lavar na máquina';
    } else{
      return 'Pode lavar na máquina';
    }
  }
  
}

class _Camiseta2{
  void recuperarCor(){}
}