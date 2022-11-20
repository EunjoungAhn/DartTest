void main() {
  Map<String, String> harryPotter = {
  'Harry Potter' : '해리포터',
  'Ron Weasley' : '론 위즐리',
  'Hermione Granger' : '헤르미온느 그레인저',
};

//이 형태는 생각보다 잘 안쓴다.
final result = harryPotter.map( //MapEntry라는 클래스로 Map의 형태로 돌려준다.
  (key, value) => MapEntry(
    'Harry Potter Charater $key',
    '한글표기명: $value'
  )
);

print(result);

//은근히 많이 쓰는 형태
final keys = harryPotter.keys.map((e) => 'Harry Potter Charater $e').toList();
final values = harryPotter.values.map((e) => 'Harry Potter Charater $e').toList();

print(keys);
print(values);

}
