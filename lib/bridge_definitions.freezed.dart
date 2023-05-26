// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bridge_definitions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FfiEvent {
  String get field0 => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String field0) reqOpenPort,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String field0)? reqOpenPort,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String field0)? reqOpenPort,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FfiEvent_ReqOpenPort value) reqOpenPort,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FfiEvent_ReqOpenPort value)? reqOpenPort,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FfiEvent_ReqOpenPort value)? reqOpenPort,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FfiEventCopyWith<FfiEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FfiEventCopyWith<$Res> {
  factory $FfiEventCopyWith(FfiEvent value, $Res Function(FfiEvent) then) =
      _$FfiEventCopyWithImpl<$Res, FfiEvent>;
  @useResult
  $Res call({String field0});
}

/// @nodoc
class _$FfiEventCopyWithImpl<$Res, $Val extends FfiEvent>
    implements $FfiEventCopyWith<$Res> {
  _$FfiEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_value.copyWith(
      field0: null == field0
          ? _value.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FfiEvent_ReqOpenPortCopyWith<$Res>
    implements $FfiEventCopyWith<$Res> {
  factory _$$FfiEvent_ReqOpenPortCopyWith(_$FfiEvent_ReqOpenPort value,
          $Res Function(_$FfiEvent_ReqOpenPort) then) =
      __$$FfiEvent_ReqOpenPortCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String field0});
}

/// @nodoc
class __$$FfiEvent_ReqOpenPortCopyWithImpl<$Res>
    extends _$FfiEventCopyWithImpl<$Res, _$FfiEvent_ReqOpenPort>
    implements _$$FfiEvent_ReqOpenPortCopyWith<$Res> {
  __$$FfiEvent_ReqOpenPortCopyWithImpl(_$FfiEvent_ReqOpenPort _value,
      $Res Function(_$FfiEvent_ReqOpenPort) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_$FfiEvent_ReqOpenPort(
      null == field0
          ? _value.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FfiEvent_ReqOpenPort implements FfiEvent_ReqOpenPort {
  const _$FfiEvent_ReqOpenPort(this.field0);

  @override
  final String field0;

  @override
  String toString() {
    return 'FfiEvent.reqOpenPort(field0: $field0)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiEvent_ReqOpenPort &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiEvent_ReqOpenPortCopyWith<_$FfiEvent_ReqOpenPort> get copyWith =>
      __$$FfiEvent_ReqOpenPortCopyWithImpl<_$FfiEvent_ReqOpenPort>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String field0) reqOpenPort,
  }) {
    return reqOpenPort(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String field0)? reqOpenPort,
  }) {
    return reqOpenPort?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String field0)? reqOpenPort,
    required TResult orElse(),
  }) {
    if (reqOpenPort != null) {
      return reqOpenPort(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FfiEvent_ReqOpenPort value) reqOpenPort,
  }) {
    return reqOpenPort(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FfiEvent_ReqOpenPort value)? reqOpenPort,
  }) {
    return reqOpenPort?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FfiEvent_ReqOpenPort value)? reqOpenPort,
    required TResult orElse(),
  }) {
    if (reqOpenPort != null) {
      return reqOpenPort(this);
    }
    return orElse();
  }
}

abstract class FfiEvent_ReqOpenPort implements FfiEvent {
  const factory FfiEvent_ReqOpenPort(final String field0) =
      _$FfiEvent_ReqOpenPort;

  @override
  String get field0;
  @override
  @JsonKey(ignore: true)
  _$$FfiEvent_ReqOpenPortCopyWith<_$FfiEvent_ReqOpenPort> get copyWith =>
      throw _privateConstructorUsedError;
}
