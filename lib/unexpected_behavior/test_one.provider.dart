import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'test_one.provider.g.dart';

@Riverpod(keepAlive: true)
class TestOne extends _$TestOne {
  @override
  Future<Object> build() async {
    final value = await _fetch();
    return value;
  }

  FutureOr<Object> _fetch() => -1;
}
