import 'package:riverpod_test/riverpod_test.dart';

void main(List<String> arguments) async {
  print('Hello world');

  await test();
}

Future<void> test() async {
  print('test() -- 1');

  await _awaitSec(5);

  print('test() -- 2');
}

Future<void> _awaitSec(int seconds) =>
    Future.delayed(Duration(seconds: seconds));
