void main() {

}


//interface - 일종에 강제하는 역학을 한다.(개발자들 끼리의 소통)
//인터페이스를 인스턴스화 하면 안되기 때문에 abstract란 키워드를 쓰면 된다.
abstract class IdolInterface{
  String name;

  IdolInterface(this.name);
  //void sayName() {}
  void sayName(); //함수의 바디를 지울 수 있다.
}

class BoyGroup implements IdolInterface{
    String name;
    
    BoyGroup(this.name);

    void sayName(){
      print('제 이름은 $name입니다.');
    }

  }