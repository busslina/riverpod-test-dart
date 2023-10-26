import 'package:riverpod/riverpod.dart';
import 'package:riverpod_test/riverpod_test.dart';

final cRef = ProviderContainer();

void main(List<String> arguments) async {
  await _testMasterSlave();
}

Future<void> _testMasterSlave() async {
  // (01) Printing slave values I
  {
    _printTest(1, 'Printing state values I');

    _printSlaveOne();
    _printSlaveTwo();

    await _awaitSec(5);
  }

  // (02) Invalidating Master (FRANCE)
  {
    _printTest(2, 'Invalidating Master(France)');

    _invalidateMaster(Country.france);

    await _awaitSec(5);
  }

  // (03) Invalidating Master (UK)
  {
    _printTest(3, 'Invalidating Master(UK)');

    _invalidateMaster(Country.uk);

    await _awaitSec(5);
  }

  // (04) Printing slave values II
  {
    _printTest(4, 'Printing state values II');
    _printSlaveOne();
    _printSlaveTwo();
  }
}

Future<void> _awaitSec(int seconds) =>
    Future.delayed(Duration(seconds: seconds));

void _printSlaveOne() => print(
    'SlaveOne value: ${cRef.read(slaveOneProvider(Country.france, President.chirac))}');

void _printSlaveTwo() => print(
    'SlaveTwo value: ${cRef.read(slaveTwoProvider(Country.uk, Region.merseyside))}');

void _invalidateMaster(Country country) =>
    cRef.invalidate(masterProvider(country));

void _printTest(int number, [String? txt]) {
  print('\nTEST -- $number${txt == null ? '' : ' -- $txt'}\n');
}
