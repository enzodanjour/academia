import 'dart:async';
// torna uma espera, o event loop espera para executar
Future<void> main()async {//void main é uma microtask
  print('main');
  scheduleMicrotask(()=>print('Microtask'));
  await Future.delayed(Duration(seconds: 1),()=>print('Future #1 delayed'));
  await Future(()=>print('Future #2'));
  await Future(()=>print('Future #3'));
  await Future.delayed(Duration(seconds: 1),()=>print('Future #4 delayed'));

  scheduleMicrotask(()=>print('Microtask 2'));
  print('main');
}
/**
 * main
  Future #3
  Future #4 delayed
  main
  Microtask 2 

 */
/**
 * MicroTask
 * main
 * Microtask #1
 * microtask #2
 */
/**
 * Event
 * Future.delayed #1 -iniciou ,ok
 * future #2 - executou
 * future #3 -executou
 * Future.delayed #4 - iniciou,ok
 */
