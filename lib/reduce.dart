void main() {
  List<int> numbers = [
    1,
    3,
    5,
    7,
    9
  ];

  //reduce() 는 loop 이다.
  //reduce() 함수로 더할 것이다. 
  final result = numbers.reduce((value, element) {
    print('----매번 새로운 loop이다. 새로운 함수 시작----');
    print('value : $value');
    print('element : $element');
    print('total : ${value + element}');

    return value + element;
  });

  print(result);

  //위의 코드를 한줄로 만들었을때
  final result2 = numbers.reduce((value, element) => value + element);

  print(result2);

  //글자를 더해 본다.
  List<String> words = [
    '안녕하세요',
    '저는',
    '코더입니다.',
  ];

  final sentence = numbers.reduce((value, element) => value + element);
  print(sentence);

  // reduce가 실행 할 수 없는 경우의 수가 있다.
  // reduce는 꼭 실행하는 List의 멤버들의 타입과 같아야만 한다. 반환타입이 시작과 끝이 같아야 한다.

  //위의 reduce의 단점인 반환타입 List 타입과 반환 타입 일치를 보완한 것이 .fold()이다.
  final sum = numbers.fold<int>(0, (previousValue, element) => previousValue + element); // <int>생략이 가능하다.
  print(sum);

  final sentence2 = words.fold<String>('', (previousValue, element) => previousValue + element); // <> 생략이 가능하다.
  print(sentence2);

  final count = words.fold(0, (previousValue, element) => previousValue + element.length);
  print(count);

}
