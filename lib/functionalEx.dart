import 'package:flutter/cupertino.dart';

void main() {
  //외부에서 어떤값을 Json형태로 받았다고 가정하에
  final List<Map<String, String>> people = [
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
//위의 List의 map이 들어가있는 list를 클래스로 바꿀 것이다.
print(people);

//people을 클래스 형태로 만들기
final parsedPeople = people.map(
  (e) => Person(
    name: e['name']!,
    group: e['group']!,
  ),
).toList();

print(parsedPeople);

for(Person person in parsedPeople){
  print(person.name);
  print(person.group);
}

//bts만 뽑으려 할때
final bts = parsedPeople.where((element) => element.group == 'BTS');
print(bts.toList());


//위의 변수들을 따로따로 만들면서 작업 하는 것이 아닌 oop이기 때문에 연결하여 처리가 가능하다.
//chaining
final result = people.map(
  (e) => Person(
    name: e['name']!,
    group: e['group']!,
  ),
).where((element) => element.group == 'BTS');

print(result.toList());

}


//클래스로 바꾸는 이유는 map의 경우는 자유도가 높고 구조화가 안되어있다.
// 그래서 구조화 되어 있는 클래스를 이용해서 값을 받을 것이다.
class Person{
  final String name;
  final String group;

  Person({
    required this.name,
    required this.group,
  });

  @override
  String toString(){
    return 'Person(name:$name, group:$group)';
  }
}