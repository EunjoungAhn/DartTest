import 'dart:async'; //다른 좋은 패키지가 있고 test을 위해 low한 패키지를 사용했다.
//steam에서도 await와 비슷한 기능을 사용할 수 있다.
void main() {
  //calculate(1) 곱하고 다 끝나면 calculate(4)하는 함수를 실행하고자 할때
  playAllStream().listen((val) {
    print(val);
  });
}

Stream<int> playAllStream() async* {
  //yield* 을 하게되면 yield* 뒤에 따라오는 함수의 실행이 다 마무리 될때까지 다음 함수는 실행하지 않는다.
  yield* calculate(1);
  yield* calculate(1000);
}

Stream<int> calculate(int number) async* {
  for(int i=0; i < 5; i++){
    //값을 하나하나 가져오기 위해서 yield를 사용한다.
    yield i * number; //yield = 산출하다.
    

    await Future.delayed(Duration(seconds: 1));
  }
}


