import 'package:dart_func_cole/3_poo/1_classes/camiseta.dart';

void main(){
  Camiseta camisetaNike = Camiseta();
  camisetaNike.tamanho = 'M';
  camisetaNike.cor = 'Azul';
  camisetaNike.marca = 'nike';

  print(Camiseta.nome);
  print(Camiseta.recuperarNome());

  print('''
    Camiseta:
      Tamanho: ${camisetaNike.tamanho}
      cor: ${camisetaNike.cor}
      marca: ${camisetaNike.marca}
      marca: ${camisetaNike.tipoDeLavagem()}
  ''');

  Camiseta camisetaAdidas = Camiseta();
  camisetaAdidas.tamanho = 'M';
  camisetaAdidas.cor = 'Azul';
  camisetaAdidas.marca = 'adidas';

  print('''
    Camiseta:
      Tamanho: ${camisetaAdidas.tamanho}
      cor: ${camisetaAdidas.cor}
      marca: ${camisetaAdidas.marca}
      marca: ${camisetaAdidas.tipoDeLavagem()}
  ''');
}