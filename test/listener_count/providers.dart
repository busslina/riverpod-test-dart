import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

enum Country {
  france,
  uk,
}

enum President {
  chirac,
  charles,
  churchill,
  boris,
}

/// 01 - Master.
@Riverpod(keepAlive: true)
class Master extends _$Master {
  int _listenersCount = 0;

  @override
  Object build(Country country) {
    print('Master.build() -- $country');

    ref.onAddListener(() {
      print('Master -- $country -- Listeners count: ${++_listenersCount}');
    });

    ref.onRemoveListener(() {
      print('Master -- $country -- Listeners count: ${--_listenersCount}');
    });

    return Object();
  }
}

/// 02 - Slave.
@Riverpod(keepAlive: true)
class Slave extends _$Slave {
  @override
  DateTime build(Country country, President president) {
    print('Slave.build() -- $country, $president');

    ref.watch(masterProvider(country));

    return DateTime.now();
  }
}
