import 'package:dart_func_cole/3_poo/7_polimorfismo/medico.dart';
import 'package:dart_func_cole/3_poo/7_polimorfismo/obstetra.dart';
import 'package:dart_func_cole/3_poo/7_polimorfismo/pediatra.dart';
import 'package:dart_func_cole/3_poo/7_polimorfismo/residente_anestesia.dart';

void main(){
  var medicos = <Medico>[
    ResidenteAnestesia(),
    Obstetra(),
    Pediatra(),
    
  ];

  for (Medico medico in medicos) {
    medico.operar();
  }


}