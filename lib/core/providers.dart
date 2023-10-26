import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

enum Country {
  france,
  uk,
}

enum President {
  chirac,
  churchill,
}

enum Region {
  picardie,
  merseyside,
}

int _slaveOneIndex = 0;

/// 01 - Master.
@Riverpod(keepAlive: true)
class Master extends _$Master {
  int _buildCount = 0;

  @override
  Object build(Country country) {
    print('Master.build() -- $country -- Count: ${_buildCount++}');

    ref.onDispose(() {
      print('Master -- ON DISPOSE -- $country');
    });

    return Object();
  }
}

/// 02 - Slave one.
@Riverpod(keepAlive: true)
class SlaveOne extends _$SlaveOne {
  int _buildCount = 0;

  @override
  int build(Country country, President president) {
    print(
        'SlaveOne.build() -- $country, $president -- Count: ${_buildCount++}');

    ref.onDispose(() {
      print('SlaveOne -- ON DISPOSE -- $country, $president');
    });

    ref.watch(masterProvider(country));

    return _slaveOneIndex++;
  }
}

/// 03 - Slave two.
@Riverpod(keepAlive: true)
class SlaveTwo extends _$SlaveTwo {
  int _buildCount = 0;

  @override
  DateTime build(Country country, Region region) {
    print('SlaveTwo.build() -- $country, $region -- Count: ${_buildCount++}');

    ref.onDispose(() {
      print('SlaveTwo -- ON DISPOSE -- $country, $region');
    });

    ref.watch(masterProvider(country));

    return DateTime.now();
  }
}
