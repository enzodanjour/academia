void main(){
  //cascade notation ,instância
  var enzo = Pessoa()
  ..email= 'enzo.danjour@gmail.com'
  ..nome = 'Enzo'
  ..site = 'www.mobylab.dev'
  ..printPessoa();
  //mesma coisa
  // pessoa.nome = 'Enzo';
  // pessoa.email = 'enzo.danjour@gmail.com';
  // pessoa.site = 'www.mobylab.dev';

   
  //funciona que nem uma cascata
  var mapa = <String,String>{}
  ..putIfAbsent('nome', () => 'Enzo')
  ..putIfAbsent('email', () => 'enzo@gmail.com')
  ..putIfAbsent('site', () => 'www.mobylab.com');
}
class Pessoa{
  String? nome;
  String? email;
  String? site;

  void printPessoa(){
    print('''
    Pessoa:
    ${email}
    ${nome}
    ${site}
  ''');
  }
}