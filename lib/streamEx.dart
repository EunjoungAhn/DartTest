import 'dart:async';
void main() {
 final controller = StreamController();
 //final stream = controller.stream; // 이렇게하면 1번만 listing을 할 수 있는 listen이 생성됨

//여러면 listen을 하려면 .asBroadcastStream()을 붙여야 한다.
final stream = controller.stream.asBroadcastStream();

//짝수만 나오게
  final streamListener1 = stream.where((val) => val %2 == 0).listen((val) {
    print('Listener 1 : $val');
  });

//짝수만 나오게 홀수만 나오게
  final streamListener2 = stream.where((val) => val %2 == 1).listen((val) {
    print('Listener 2 : $val');
  });

  controller.sink.add(1); // 값을 전달해 준다.
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);
}


