void main() {
  BoyGroup bts = BoyGroup('bts', 7);
}

//상속 - inheritance
class Idol{
  String name;
  int membersCount;

  Idol({
    required this.name,
    required this.membersCount,
  });

  void sayName(){
    print('저는 ${this.name}입니다.');
  }

  
  void sayMembersCount(){
    print('${this.name}은 ${this.membersCount}명의 멤버가 있습니다.');
  }
}

//상속 받은 클래스는 부모 클래스의 생성자를 준수 해주어야 한다.
class BoyGroup extends Idol{
  BoyGroup(
    String name,
    int membersCount,
  ):super(//부모 클래스인 Ido 클래스의 생성자에 전달을 해준다.
    name: name,
    membersCount: membersCount
    );
    //자식 클래스의 어떤 것이든 부모클래스에서 쓸 수 없다.
}
