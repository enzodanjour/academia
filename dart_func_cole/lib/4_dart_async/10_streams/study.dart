import 'dart:math';
import 'dart:async';
void main() {
  for (var i = 0; i < 4; i++) {
    print('hello $i');
  }
  
  Stream<double> getRandomValues() async* {
    

    var random = Random(2);

    while (true) {
      await Future.delayed(Duration(seconds: 3));
      yield random.nextDouble();
    }
  }

  getRandomValues().listen((value) {
    print('1st: $value');
  });
}
