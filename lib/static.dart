void main() {

}

class Employee{
  // static은 instance에 귀속되지 않고 class에 귀속된다.
  static String? building; //알바생의 건물
  final String name; // 알바생의 이름

  Employee(this.name);

  void printNameAndBuilding(){
    print('제 이름은 $name입니다. $building 건물에서 근무하고 있습니다.');
  }

  static void printBuilding(){
    print('저는 $building 건물에서 근무중입니다.');
  }
}