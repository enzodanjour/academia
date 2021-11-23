import 'dart:mirrors';

import 'package:dart_func_cole/3_poo/20_metadatas/pessoa.dart';
import 'package:dart_func_cole/3_poo/20_metadatas/todo.dart';

void main(){
  final p1 = Pessoa();

  InstanceMirror instanceMirror = reflect(p1);

  ClassMirror classMirror = instanceMirror.type;

  classMirror.metadata.forEach((annotation){
    var instanceAnotation = annotation.reflectee;
    if(instanceAnotation is Todo){
      print(instanceAnotation.quem);
      print(instanceAnotation.oque);
    }
    classMirror.declarations.values.forEach((declarationMirro) { 
      if(declarationMirro is VariableMirror){
        declarationMirro.metadata.forEach((annotation) {  
          var instanceAnotation = annotation.reflectee;
          if(instanceAnotation is Todo){
            print('Variaveis');
            print(instanceAnotation.quem);
            print(instanceAnotation.oque);
          }}
      );
      }else if(declarationMirro is MethodMirror){
         declarationMirro.metadata.forEach((annotation) {  
          var instanceAnotation = annotation.reflectee;
          if(instanceAnotation is Todo){
            print('Metodos');
            print(instanceAnotation.quem);
            print(instanceAnotation.oque);
          }});
      }
    });
  });

  
}