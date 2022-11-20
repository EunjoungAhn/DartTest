import 'dart:async';
void main() {
 final controller = StreamController();
 //final stream = controller.stream; // 이렇게하면 1번만 listing을 할 수 있는 listen이 생성됨

//여러면 listen을 하려면 .asBroadcastStream()을 붙여야 한다.
final stream = controller.stream.asBroadcastStream();

  final streamListener1 = stream.listen((val) {
    print('Listener 1 : $val');
  });

  
  final streamListener2 = stream.listen((val) {
    print('Listener 2 : $val');
  });

//stram을 여러개 선언하기
  controller.sink.add(1); // 값을 전달해 준다.
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);
}


