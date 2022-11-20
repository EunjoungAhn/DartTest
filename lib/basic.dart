void main() {
  //var 타입은 한번 선언할때 그 값으로 고정이된다.
  var name = '코드';
  //name = 5; //에러가 생긴다.

  //dynamic은 다양한 타입으로 변경가능하다.
  dynamic name2 = '파워';
  name2 = 5; // 에러가 없다.

  //main 실행시 변수의 값을 알려준다.
  print(name.runtimeType);

  //어떤 타입이든 타입 옆에?(물음표)를 넣으면 null을 담을 수 있다.
  String? name3 = '레인보우';
  name3 = null;

  //타입 뒤에 ? 표가 없으면 에러가 난다.
  String name4 = '무지개';
  //name4 = null;

  //반대로 타입 뒤에 !(느낌표)가 있으면 null을 넣을 수 없다는 뜻이다.
  print(name3!); //현재 name3는 null이 아니다 라는 의미가 된다.

//final과 const는 var 기능을 내포하고 있어서 생략이 가능하다.
final name5 = '코드파워';
const name6 = '레인보우=무지개';
//final의 경우 '빌드타임'의 값을 몰라도 되지만 const의 경우에는 절대적으로 '빌드타임'의 값을 알아야한다.

//DateTime.now() 함수는 실행 될때의 시간을 저장해준다.
//만약 두개가 있다면 다른 실행 시간이 저장된다.

double? number = 4.0;
number = 2.0;
number = null;
number ??= 3.0; //만약 값이 null이라면 오른쪽 값을 저장해라 라는 의미이다.

int number1 = 1;
print(number1 is int); // true
print(number1 is! int); // false
//is는 값을 비교하는 명령어.

//Map 형식 데이터 추가 방법
Map<String, bool> isHarryPotter = {
  'Harry Potter' : true,
  'Ron Weasley' : true,
  'Ironman' : false,
};

print(isHarryPotter);

//Map 형식 데이터 추가 방법1
isHarryPotter.addAll({
  'Spiderman' : false,
});

//Map 형식 데이터 추가 방법2
isHarryPotter['Hulk'] = false;

//key를 검색해서 value 값을 가져온다. 하지만 value에 해당하는 key 값은 못 가져온다.
//지우는 것은 List와 같이 .remove() 하면 지워진다.
isHarryPotter['Ironman']; //false 값을 가져온다.

//key와 value값을 따로 각각 가져오는 법
isHarryPotter.keys;
isHarryPotter.values;

//Set은 중복값을 가질수 없으며 자동으로 처리한다.

  
}

//optional parameter - 있어도 되고 없어도 되는 파라미터
addNumber(int x, [int y = 20, int z = 30]){ //기본값 선언, 안 넣으면 에러가 남으로 넣어준다.
//또는 int? 로 null도 허용할 수 있도록 할 수 있지만, int 수식 계산시 null을 계산할 수 없으니 기본 값을 넣어주었다.
}

//named parameter - 이름이 있는 파라미터(순서가 중요하지 않다.)
addNumber2({
  required int x,
  required int y,
  required int z,
}) {}
//함수를 호출할때 addNumber2(y:20, x:10, z:30) 순서와 상관없이 파라미터를 넣을 수 있다.

//named parameter에서 optional parameter 적용하기 
addNumber3({
  required int x,
  required int y,
  int z = 40,
}) {}

//arrow function은 => 바로 다음에 오는 값이 반환되는 값이다.

//리턴 타입과 파라미터의 형태를 signature이라고 한다.
//typedef Operation = int Function(int x, int y, int z);

