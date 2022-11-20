void main() {
  Idol blackPink = Idol('블랙핑크', ['지수', '제니', '리사', '로제']); //dart 언어에서는 new를 생략해도 된다.
  Idol bts = Idol('BTS', ['RM', '진', '슈가', '제이홉', '지민', '뷔', '정국']); //dart 언어에서는 new를 생략해도 된다.
  print(blackPink.firstMember);
  print(bts.firstMember);

  //setter로 값 지정 = 우측에는 setter에서 받는 파라미터 type을 맞추어서 넣어주면 된다.
  blackPink.firstMember = '코드';
  bts.firstMember = '코드';

  print(blackPink.firstMember); //setter로 변경된 값이 나온다.
  print(bts.firstMember);
}

// getter / setter
// 데이터를 가져올때 / 데이터를 설정할때
class Idol {
  String name;
  List<String> members;

  //파라미터는 받는 기본 생성자
  Idol(this.name, this.members); //final이 아니면 const를 쓸 수 없다.


  void sayHello(){
    print("안녕하세요!! ${this.name} 입니다.");
  }

  void introduce(){
    print("세계 아티스트의 별이 되고자 하는 ${this.members} 입니다.");
  }

  // getter
  String get firstMember{
    return this.members[0];
  }

  // setter 는 파라미터에 무조건 하나만 받는다.
  set firstMember(String name){
    this.members[0] = name;
  }
}

// 클래스 _클래스명 (_ 언더바)를 클래스명 앞에 붙이면 private 속성이된다.
// 메서드, 변수 어느 것이든 언더바를 앞에 붙이면 private 속성이된다.

