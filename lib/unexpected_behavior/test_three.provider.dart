import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'test_three.provider.g.dart';

@Riverpod(keepAlive: true)
class TestThree extends _$TestThree {
  @override
  FutureOr<Object> build() async {
    final value = await _fetch();

    return value;
  }

  FutureOr<Object> _fetch() => -1;
}
