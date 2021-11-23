import 'package:dart_func_cole/3_poo/10_mixins/artista.dart';

mixin Dancar on Artista {
  String dancar(){
    return 'Dancar';
  }
  @override
  String apresenta(){ //sobrescrita de metodos
    return 'baby baby baby ohhh';
  }
}
