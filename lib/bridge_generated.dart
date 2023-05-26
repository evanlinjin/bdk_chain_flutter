// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.76.0.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty, unnecessary_const

import "bridge_definitions.dart";
import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:uuid/uuid.dart';
import 'bridge_generated.io.dart'
    if (dart.library.html) 'bridge_generated.web.dart';

class NativeImpl implements Native {
  final NativePlatform _platform;
  factory NativeImpl(ExternalLibrary dylib) =>
      NativeImpl.raw(NativePlatform(dylib));

  /// Only valid on web/WASM platforms.
  factory NativeImpl.wasm(FutureOr<WasmModule> module) =>
      NativeImpl(module as ExternalLibrary);
  NativeImpl.raw(this._platform);
  Future<Platform> platform({dynamic hint}) {
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_platform(port_),
      parseSuccessData: _wire2api_platform,
      constMeta: kPlatformConstMeta,
      argValues: [],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kPlatformConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "platform",
        argNames: [],
      );

  Future<bool> rustReleaseMode({dynamic hint}) {
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_rust_release_mode(port_),
      parseSuccessData: _wire2api_bool,
      constMeta: kRustReleaseModeConstMeta,
      argValues: [],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kRustReleaseModeConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "rust_release_mode",
        argNames: [],
      );

  Future<Counter> newCounter({dynamic hint}) {
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_new_counter(port_),
      parseSuccessData: _wire2api_Counter,
      constMeta: kNewCounterConstMeta,
      argValues: [],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kNewCounterConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "new_counter",
        argNames: [],
      );

  Future<int> incrementCounter({required Counter counter, dynamic hint}) {
    var arg0 = _platform.api2wire_Counter(counter);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_increment_counter(port_, arg0),
      parseSuccessData: _wire2api_u64,
      constMeta: kIncrementCounterConstMeta,
      argValues: [counter],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kIncrementCounterConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "increment_counter",
        argNames: ["counter"],
      );

  Future<int> decrementCounter({required Counter counter, dynamic hint}) {
    var arg0 = _platform.api2wire_Counter(counter);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_decrement_counter(port_, arg0),
      parseSuccessData: _wire2api_u64,
      constMeta: kDecrementCounterConstMeta,
      argValues: [counter],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kDecrementCounterConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "decrement_counter",
        argNames: ["counter"],
      );

  Stream<FfiEvent> doNothing({dynamic hint}) {
    return _platform.executeStream(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_do_nothing(port_),
      parseSuccessData: _wire2api_ffi_event,
      constMeta: kDoNothingConstMeta,
      argValues: [],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kDoNothingConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "do_nothing",
        argNames: [],
      );

  DropFnType get dropOpaqueCounter => _platform.inner.drop_opaque_Counter;
  ShareFnType get shareOpaqueCounter => _platform.inner.share_opaque_Counter;
  OpaqueTypeFinalizer get CounterFinalizer => _platform.CounterFinalizer;

  void dispose() {
    _platform.dispose();
  }
// Section: wire2api

  Counter _wire2api_Counter(dynamic raw) {
    return Counter.fromRaw(raw[0], raw[1], this);
  }

  String _wire2api_String(dynamic raw) {
    return raw as String;
  }

  bool _wire2api_bool(dynamic raw) {
    return raw as bool;
  }

  FfiEvent _wire2api_ffi_event(dynamic raw) {
    switch (raw[0]) {
      case 0:
        return FfiEvent_ReqOpenPort(
          _wire2api_String(raw[1]),
        );
      default:
        throw Exception("unreachable");
    }
  }

  int _wire2api_i32(dynamic raw) {
    return raw as int;
  }

  Platform _wire2api_platform(dynamic raw) {
    return Platform.values[raw as int];
  }

  int _wire2api_u64(dynamic raw) {
    return castInt(raw);
  }

  int _wire2api_u8(dynamic raw) {
    return raw as int;
  }

  Uint8List _wire2api_uint_8_list(dynamic raw) {
    return raw as Uint8List;
  }
}

// Section: api2wire

// Section: finalizer
