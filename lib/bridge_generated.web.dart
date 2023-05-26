// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.76.0.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty, unnecessary_const

import "bridge_definitions.dart";
import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:uuid/uuid.dart';
import 'bridge_generated.dart';
export 'bridge_generated.dart';

class NativePlatform extends FlutterRustBridgeBase<NativeWire>
    with FlutterRustBridgeSetupMixin {
  NativePlatform(FutureOr<WasmModule> dylib) : super(NativeWire(dylib)) {
    setupMixinConstructor();
  }
  Future<void> setup() => inner.init;

// Section: api2wire

  @protected
  Object api2wire_Counter(Counter raw) {
    return raw.shareOrMove();
  }
// Section: finalizer

  late final Finalizer<PlatformPointer> _CounterFinalizer =
      Finalizer<PlatformPointer>(inner.drop_opaque_Counter);
  Finalizer<PlatformPointer> get CounterFinalizer => _CounterFinalizer;
}

// Section: WASM wire module

@JS('wasm_bindgen')
external NativeWasmModule get wasmModule;

@JS()
@anonymous
class NativeWasmModule implements WasmModule {
  external Object /* Promise */ call([String? moduleName]);
  external NativeWasmModule bind(dynamic thisArg, String moduleName);
  external dynamic /* void */ wire_platform(NativePortType port_);

  external dynamic /* void */ wire_rust_release_mode(NativePortType port_);

  external dynamic /* void */ wire_new_counter(NativePortType port_);

  external dynamic /* void */ wire_increment_counter(
      NativePortType port_, Object counter);

  external dynamic /* void */ wire_decrement_counter(
      NativePortType port_, Object counter);

  external dynamic /* void */ wire_do_nothing(NativePortType port_);

  external dynamic /*  */ drop_opaque_Counter(ptr);

  external int /* *const c_void */ share_opaque_Counter(ptr);
}

// Section: WASM wire connector

class NativeWire extends FlutterRustBridgeWasmWireBase<NativeWasmModule> {
  NativeWire(FutureOr<WasmModule> module)
      : super(WasmModule.cast<NativeWasmModule>(module));

  void wire_platform(NativePortType port_) => wasmModule.wire_platform(port_);

  void wire_rust_release_mode(NativePortType port_) =>
      wasmModule.wire_rust_release_mode(port_);

  void wire_new_counter(NativePortType port_) =>
      wasmModule.wire_new_counter(port_);

  void wire_increment_counter(NativePortType port_, Object counter) =>
      wasmModule.wire_increment_counter(port_, counter);

  void wire_decrement_counter(NativePortType port_, Object counter) =>
      wasmModule.wire_decrement_counter(port_, counter);

  void wire_do_nothing(NativePortType port_) =>
      wasmModule.wire_do_nothing(port_);

  dynamic /*  */ drop_opaque_Counter(ptr) =>
      wasmModule.drop_opaque_Counter(ptr);

  int /* *const c_void */ share_opaque_Counter(ptr) =>
      wasmModule.share_opaque_Counter(ptr);
}