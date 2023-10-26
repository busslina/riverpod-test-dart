void printTestStep(int number, [String? txt]) {
  print('\nTEST STEP -- $number${txt == null ? '' : ' -- $txt'}\n');
}

Future<void> awaitSec(int seconds) =>
    Future.delayed(Duration(seconds: seconds));
