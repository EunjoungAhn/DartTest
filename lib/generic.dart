void main() {
  //타입을 변수처럼 외부에서 받아서 쓸 수 있도록 해주는 것
  Lecture<String> lecture1 = Lecture('123', 'lecture1');

  lecture1.printIdType();
  
  Lecture<int> lecture2 = Lecture(123, 'lecture1');

  lecture2.printIdType();

}

//generic - 타입을 외부에서 받을때 사용
class Lecture<T> {
  final T id;
  final String name;

  Lecture(this.id, this.name);

  void printIdType(){
    print(id.runtimeType);
  }
}