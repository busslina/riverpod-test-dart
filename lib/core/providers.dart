import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

int _slaveOneIndex = 0;

/// 01 - Master.
@Riverpod(keepAlive: true)
class Master extends _$Master {
  @override
  dynamic build() => null;
}

/// 02 - Slave one.
@Riverpod(keepAlive: true)
class SlaveOne extends _$SlaveOne {
  @override
  int build() {
    ref.watch(masterProvider);

    return _slaveOneIndex++;
  }
}

/// 03 - Slave two.
@Riverpod(keepAlive: true)
class SlaveTwo extends _$SlaveTwo {
  @override
  DateTime build() {
    ref.watch(masterProvider);

    return DateTime.now();
  }
}
