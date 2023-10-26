import 'package:riverpod_test/riverpod_test.dart';
import 'package:riverpod_test/core/providers.dart';

import 'package:riverpod/riverpod.dart';

final cRef = ProviderContainer();

Future<void> testMasterSlave() async {
  // (01) Printing slave values I
  {
    printTestStep(1, 'Printing state values I');

    _printSlaveOne();
    _printSlaveTwo();

    await awaitSec(5);
  }

  // (02) Invalidating Master (FRANCE)
  {
    printTestStep(2, 'Invalidating Master(France)');

    _invalidateMaster(Country.france);

    await awaitSec(5);
  }

  // (03) Invalidating Master (UK)
  {
    printTestStep(3, 'Invalidating Master(UK)');

    _invalidateMaster(Country.uk);

    await awaitSec(5);
  }

  // (04) Printing slave values II
  {
    printTestStep(4, 'Printing state values II');
    _printSlaveOne();
    _printSlaveTwo();
  }
}

void _printSlaveOne() => print(
    'SlaveOne value: ${cRef.read(slaveOneProvider(Country.france, President.chirac))}');

void _printSlaveTwo() => print(
    'SlaveTwo value: ${cRef.read(slaveTwoProvider(Country.uk, Region.merseyside))}');

void _invalidateMaster(Country country) =>
    cRef.invalidate(masterProvider(country));
