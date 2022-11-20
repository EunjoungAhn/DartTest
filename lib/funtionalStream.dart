import 'dart:async';//다른 좋은 패키지가 있고 test을 위해 low한 패키지를 사용했다.
void main() {
  //비동기 처리가 가능해 진다.
  calculate(1).listen((val) {
    print('calculate(1) : $val');
  });

  calculate(4).listen((val) {
    print('calculate(4) : $val');
  });
}

Stream<int> calculate(int number) async* {
  for(int i=0; i < 5; i++){
    //값을 하나하나 가져오기 위해서 yield를 사용한다.
    yield i * number; //yield = 산출하다.

    await Future.delayed(Duration(seconds: 1));
  }
}


