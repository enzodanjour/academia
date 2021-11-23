void main(){
  String idade= '38';
  String? nome;
  try{ 
   var idadeParse =  int.parse(idade);
    // nome!.toLowerCase();
    if(idadeParse == 38){
      throw Exception();
    }
  }on FormatException catch(e,s){
    print('Erro de formato');
    print(s);
  }on TypeError {
    
    print('Erro de conversão');
  } on Exception{
    print('erro idade 38');
  }catch (e){
    print(e);
  } finally {
    print('finalmente');
  }
  
}
//todos os erros em dart tem o erro e o stracktrace