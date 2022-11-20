void main() {
  List<String> blackPink = ['지수', '제니', '리사', '로제'];

  //함수에 함수 파라미터를 넣어 주어야 한다.
  final newBlackPink = blackPink.map((x){// .map 함수를 쓰면 새로운 리스트가 만들어 진다.
    return '블랙핑크 $x';
  });

  print(blackPink);
  print(newBlackPink.toList()); // Iterable(반복) 형태는 잘 쓰지 않기 때문에 list로 바꾸어 준다.

  final newBlackPink2 = blackPink.map((e) => '블랙핑크 $e');
  print(newBlackPink.toList());

  // 매번 새로운 리스트를 만들어 주기 때문에 다르게 인식한다.
  print(newBlackPink == newBlackPink2);


  //실제 사례
  //바꾸고 싶은 형태 [1.jpg, 3.jpg, 5.jpg, 7.jpg]
  String number = '13579';

  //split()은 나누어서 리스트를 만들어 준다. 
  //final parsed = number.split('');

  //리스트를 만들었으니 .map()을 사용해서 
  final parsed = number.split('').map((e) => '$e.jpg').toList();

  print(parsed);
}
