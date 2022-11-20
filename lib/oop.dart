// Object Oriented Programming
// 객체 지향 프로그래밍

//모든 클래스가 최상위에서 Object를 상속받기 때문에 '객체 지향 프로그래밍'이라 부른다.

void main() {
  Idol blackPink = Idol('블랙핑크', ['지수', '제니', '리사', '로제']); //dart 언어에서는 new를 생략해도 된다.
  print(blackPink.name);
  blackPink.sayHello();

  Idol bts = Idol('BTS', ['RM', '진', '슈가', '제이홉', '지민', '뷔', '정국']); //dart 언어에서는 new를 생략해도 된다.
  print(bts.name);
  bts.sayHello();
}

// Idol class
// name - 변수
// members - 변수
// sayHello - 함수
// introduce - 함수

// class에서도 파라미터를 받는 방법은 생성자를 선언하는 것이다.
// immutable 프로그래밍 - final로 선언(새로운 인스턴스 생성을 유도 중간에 값을 바꾸지 못하게 하기 위해)
class Idol {
  final String name;
  final List<String> members;

  //가장 기본적인 생성자
  //Idol();

  //파라미터는 받는 기본 생성자
  //Idol(this.name, this.members);
  const Idol(this.name, this.members); //const 지정이 가능하며 const를 지정하고 값이 같은 인스턴스들은 비교=== 하면 true가 나온다.
  //const가 없는 인스턴스는 다른 인스턴스이다.

  //네임드 생성자 - 기본 생성자와 동일하게 작동한다.
  //Idol.fromList(List Values)
  //: this.members = values[0],
  //  this.name = values[1];

  void sayHello(){
    print("안녕하세요!! ${this.name} 입니다.");
  }

  void introduce(){
    print("세계 아티스트의 별이 되고자 하는 ${this.members} 입니다.");
  }
}