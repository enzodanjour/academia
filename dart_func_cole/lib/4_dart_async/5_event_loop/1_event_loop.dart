import 'dart:async';

void main(){//void main é uma microtask
  print('main');
  scheduleMicrotask(()=>print('Microtask'));
  Future.delayed(Duration(seconds: 1),()=>print('Future #1 delayed'));
  Future(()=>print('Future #2'));
  Future(()=>print('Future #3'));
  Future.delayed(Duration(seconds: 1),()=>print('Future #4 delayed'));

  scheduleMicrotask(()=>print('Microtask 2'));
  print('main');
}
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
