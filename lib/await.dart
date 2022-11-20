void main() async {
  // Future - 미래
  // 미래에 받아올 값
  Future<String> name = Future.value('코드');

  print('함수 시작');

  // 2개의 파라미터
  // delayed - 지연되다.
  // 1번 파라미터 - 지연할 기간 (얼마나 지연할 건지) Duration
  // 2번 파라미터 - 지연 시간이 지난 후 실행할 함수.
  Future.delayed(Duration(seconds: 2), (){ 
    print('Delay 끝');
  });

  //함수와 함수바디인 {} 괄호 앞에 async를 넣으면 await을 할 수 있으며
  //함수를 await 하려면 함수를 Future<>로 감싸주어야 한다.
  await addNumbers(1, 1);
}

Future<void> addNumbers(int number1, int number2) async {
  print('계산시작 : $number1 + $number2');

//서버 시뮬레이션
  
// await 를 사용함으로써 cpu가 비동기 처리를 진행함으로 Thread가 노는 것이 아닌
// 다른 일을 찾아 실행한다.

//Future<Null> 함수들은 async 함수 들이다.
//Future를 리턴하는 함수만 await을 할 수 있다.
await Future.delayed(Duration(seconds: 2), () {
  print('계산시작 : $number1 + $number2 = ${number1 + number2}');
});

print('함수 완료');
  
}

