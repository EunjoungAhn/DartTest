void main() {
  //여러개의 list를 하나로 합칠때 쓴다.
  List<int> even = [2,4,6,8,];
  List<int> odd = [1,3,5,7,];

  // cascading operator (계단식 연산자)

 print([...even, ...odd]); // [2,4,6,8,1,3,5,7] 값을 하나로 펼쳐서 넣게 된다. 그리고 생성된 리스트는 새로운 리스트가 된다.
 print(even == [...even]); // false가 나온다.
}