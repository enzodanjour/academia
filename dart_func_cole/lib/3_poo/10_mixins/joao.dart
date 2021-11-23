import 'package:dart_func_cole/3_poo/10_mixins/artista.dart';
import 'package:dart_func_cole/3_poo/10_mixins/cantar.dart';

import 'dancar.dart';
// herança múltipla
// não pode extender do mixin, vem após um with
class Joao extends Artista with Dancar, Cantar{

}
abstract class ArtistaInterface{}