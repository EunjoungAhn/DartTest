void main() {
  List<String> blackPink = ['지수', '제니', '리사', '로제', '로제'];
  print(blackPink);
  print(blackPink.asMap()); // 리스트를 map으로 변환
  print(blackPink.toSet()); // 리스트를 set으로 변환

  Map blackPinkMap = blackPink.asMap();
  print(blackPinkMap.keys.toList()); //key 값을 list로 변환
  print(blackPinkMap.values.toList()); //values 값을 list로 변환

  Set blackPinkSet = Set.from(blackPink); // List부터 Set을 만드는 방법 중 하나.
  print(blackPinkSet.toList()); // set을 list로 변환
}
