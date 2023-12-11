import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'test_two.provider.g.dart';

@Riverpod(keepAlive: true)
class TestTwo extends _$TestTwo {
  @override
  FutureOr<Object> build() => _fetch();

  FutureOr<Object> _fetch() => -1;
}
