void main (){
  var numerosLista = [];
  numerosLista.add(1);
  numerosLista.add(2);
  numerosLista.add(3);
  numerosLista.add(3);
  numerosLista.add(null);
  numerosLista.add(1);
  numerosLista.add(2);
  print(numerosLista);


  //como se fosse uma lista de valores não duplicados
  var numerosSet = <int?>{};
  numerosSet.add(1);
  numerosSet.add(2);
  numerosSet.add(3);
  numerosSet.add(3);
  numerosSet.add(null);
  numerosSet.add(1);
  numerosSet.add(2);
  print(numerosSet);

  print(numerosLista.toSet());

  numerosSet.forEach(print);
  var numeros1 = {1,2,3,4,5,6};
  var numeros2 = {1,3,4,7};
  print('.difference');
  print(numeros1.difference(numeros2));

  print('.union');
  print(numeros1.union(numeros2));

  print('.intersection');
  print(numeros1.intersection(numeros2));

  var nomes1= {'ENZO','LAURA','LUIZA'};
  var nomes2 = {'ENZO','VITOR','VITORIA'};

  print(nomes1.intersection(nomes2));

  print('.lookup');
  print(numeros1.lookup(1));
  print(numeros1.lookup(99));

  nomes1.elementAt(0);
  
}