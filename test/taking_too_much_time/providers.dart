import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@riverpod
class Fetcher extends _$Fetcher {
  late DateTime _start;
  @override
  Future<String> build(String url) async {
    _start = DateTime.now();
    await Future.delayed(const Duration(seconds: 15));
    return 'Hello world -- $url';
  }

  bool isTimeout() =>
      DateTime.now().difference(_start) > const Duration(seconds: 5);
}

@riverpod
class FetcherTimeoutWrapper extends _$FetcherTimeoutWrapper {
  Timer? _timer;

  @override
  ({bool timeout, bool isLoading, Object? error, String? value}) build(
    String url,
  ) {
    final asyncValue = ref.watch(fetcherProvider(url));
    final loading = asyncValue is AsyncLoading;
    final timeout =
        loading ? ref.read(fetcherProvider(url).notifier).isTimeout() : false;
    final error = asyncValue is AsyncError ? asyncValue.asError!.error : null;
    final value = asyncValue is AsyncData ? asyncValue.asData!.value : null;

    _timer?.cancel();
    if (loading) {
      _timer = Timer(const Duration(seconds: 1), ref.invalidateSelf);
    }

    return (
      timeout: timeout,
      isLoading: loading,
      error: error,
      value: value,
    );
  }
}
