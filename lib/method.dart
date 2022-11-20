void main() {

}

// method (class 내부에 있는 함수)
// override - 덮어쓰다 (우선시하다.)
class TimesTwo{
  final int number;

  TimesTwo(
    this.number,
  );

  // method
  int calculate(){
    return number * 2;
  }
}

class TimesFour extends TimesTwo {
  TimesFour(
    int number,
  ):super(number);

  @override
  int calculate(){
    //return super.number *4; //정석
    return number *4; //삭제도 가능하다
    //return super.calculate() *2; 도 가능하다. (꼭 super 부모의 키워드가 있어야 한다.)
  }
}