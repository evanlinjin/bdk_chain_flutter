// import 'package:bdk_chain/bridge_definitions.dart';
import 'dart:ffi';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

import 'package:bdk_chain/bdk_chain.dart';

void main() {
  test('adds one to input values', () async {
    final dylib = Platform.isIOS
        ? DynamicLibrary.process()
        : DynamicLibrary.open("./target/debug/libbdk_chain_flutter.so");

    final api = BdkChainFlutterImpl(dylib);
    final counter = await api.newCounter();

    for (var i = 1; i <= 100; i++) {
      final count = await api.incrementCounter(counter: counter);
      print('the count is $count');
      expect(count, i);
    }

    // api.newCounter()

    // var counter = BdkChainFlutter.newCounter();
    // var counter = BdkChainFlutter.newCounter();
    // final counter = Counter.fromRaw(ptr, size, bridge);
    // final counter = BdkChainFlutterImpl.newCounter();

    // var counter =
    // final calculator = Calculator();
    // expect(calculator.addOne(2), 3);
    // expect(calculator.addOne(-7), -6);
    // expect(calculator.addOne(0), 1);
  });
}
