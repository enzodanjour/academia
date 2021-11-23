import 'dart:io';

Future<void> main() async {
  var file = File('lib/4_dart_async/9_files/file.txt');

  //leitura síncrona
  var fileData = file.readAsStringSync();
  print(fileData);
  //leitura assíncrona
  var fileAsyncData = await file.readAsString();
  print(fileAsyncData);
  //leitura linha síncrona
  var fileLineSync = file.readAsLinesSync();
  print(fileLineSync[1]);
  //leitura linha assíncrona
  var asyncLineRead = await file.readAsLines();
  print(asyncLineRead[1]);
  //escrita dos arquivos
  var file2 =  File('lib/4_dart_async/9_files/file2.txt');
  await file2.writeAsString('Irineu você não sabe nem eu\n',mode: FileMode.append);

  var listaNomes = ['Laura', 'Irineu', 'Enzo'];
  var file3 = File('lib/4_dart_async/9_files/file3.txt');
  var writeFile = file3.openWrite(mode: FileMode.append);

  listaNomes.forEach((nome) => writeFile.write('$nome\n'));
}