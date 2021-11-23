
/**
 * Pessoa
 *  nome: enzo
 *  email: dracken@gmail.com
 * Pessoa
 *  nome: laura
 *  email:soueualaura
 */
class Pessoa {
  //equals e hashcode são fundamentais

  String nome;
  String email;
  Pessoa({
    required this.nome,
    required this.email,
  });

  @override
  bool operator ==(Object other){
    if(identical(this, other)) return true;
    
    return other is Pessoa &&
      other.nome == nome && 
      other.email ==email;
  }

  @override
  int get hashCode{
    return nome.hashCode ^ email.hashCode;
  }

  @override
  String toString(){
    return '''Pessoa:
      nome:$nome 
      email:$email
    ''';
  }
  
  //independente da referência os objetos serão iguais
  // @override
  // bool operator ==(Object other){
  //   if(identical(this, other)){//meu objeto
  //     return true;
  //   }
  //   if(other is Pessoa){
  //     if(other.nome == nome){
  //       if(other.email == email){
  //         return true;
  //       }else{
  //         return false;
  //       }
  //     }else{
  //       return false;
  //     }
  //   }else{
  //     return false;
  //   }
  // }
  // @override
  // bool operator ==(Object other){
  //   if(identical(this, other)) return true;
  //   var equals = false;
  //   if(other is Pessoa){
  //     if(other.nome == nome){
  //       if(other.email == email){
  //         equals =  true;
  //       }
  //     }
  //   }
  //   return equals;
  // }

  
}
