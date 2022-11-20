void main() {
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

  addNumbers(1, 1);
}

void addNumbers(int number1, int number2){
  print('계산시작 : $number1 + $number2');

  //서버 시뮬레이션
Future.delayed(Duration(seconds: 2), () {
  print('계산시작 : $number1 + $number2 = ${number1 + number2}');
});

print('함수 완료');
  
}

