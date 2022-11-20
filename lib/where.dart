void main() {
  //list 안에 맵 넣은 형식
  List<Map<String, String>> people = [
  {
    'name' : '로제',
    'group' : '블랙핑크',
  },
  {
    'name' : '지수',
    'group' : '블랙핑크',
  },
  {
    'name' : 'RM',
    'group' : 'BTS',
  },
  {
    'name' : '뷔',
    'group' : 'BTS',
  },
];

print(people);

// where함수는 필터링을 할 수 있는 기능이 있다.
final blackPink = people.where((element) => element['group'] == '블랙핑크').toList();
final bts = people.where((element) => element['group'] == 'BTS').toList();

print(blackPink);
print(bts);

}
