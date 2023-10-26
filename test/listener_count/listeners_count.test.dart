import 'package:riverpod_test/riverpod_test.dart';
import 'providers.dart';

import 'package:riverpod/riverpod.dart';

Future<void> main() async {
  final cRef = ProviderContainer();

  // (01) Reading Slave (France, Chirac)
  {
    printTestStep(1, 'Reading Slave (France, Chirac)');
    cRef.read(slaveProvider(Country.france, President.chirac));
    await awaitSec(5);
  }

  // (02) Reading Slave (UK, Churchill)
  {
    printTestStep(2, 'Reading Slave (UK, Churchill)');
    cRef.read(slaveProvider(Country.uk, President.churchill));
    await awaitSec(5);
  }

  // (03) Reading Slave (France, Charles)
  {
    printTestStep(3, 'Reading Slave (France, Charles)');
    cRef.read(slaveProvider(Country.france, President.charles));
    await awaitSec(5);
  }

  // (04) Reading Slave (UK, Boris)
  {
    printTestStep(4, 'Reading Slave (UK, Boris)');
    cRef.read(slaveProvider(Country.uk, President.boris));
    await awaitSec(5);
  }
}
