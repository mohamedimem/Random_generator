// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'RandomizerChangeNotifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RandomierState {
  dynamic get min => throw _privateConstructorUsedError;
  dynamic get max => throw _privateConstructorUsedError;
  int? get generatedNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RandomierStateCopyWith<RandomierState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RandomierStateCopyWith<$Res> {
  factory $RandomierStateCopyWith(
          RandomierState value, $Res Function(RandomierState) then) =
      _$RandomierStateCopyWithImpl<$Res, RandomierState>;
  @useResult
  $Res call({dynamic min, dynamic max, int? generatedNumber});
}

/// @nodoc
class _$RandomierStateCopyWithImpl<$Res, $Val extends RandomierState>
    implements $RandomierStateCopyWith<$Res> {
  _$RandomierStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? min = freezed,
    Object? max = freezed,
    Object? generatedNumber = freezed,
  }) {
    return _then(_value.copyWith(
      min: freezed == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as dynamic,
      max: freezed == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as dynamic,
      generatedNumber: freezed == generatedNumber
          ? _value.generatedNumber
          : generatedNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RandomierStateCopyWith<$Res>
    implements $RandomierStateCopyWith<$Res> {
  factory _$$_RandomierStateCopyWith(
          _$_RandomierState value, $Res Function(_$_RandomierState) then) =
      __$$_RandomierStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic min, dynamic max, int? generatedNumber});
}

/// @nodoc
class __$$_RandomierStateCopyWithImpl<$Res>
    extends _$RandomierStateCopyWithImpl<$Res, _$_RandomierState>
    implements _$$_RandomierStateCopyWith<$Res> {
  __$$_RandomierStateCopyWithImpl(
      _$_RandomierState _value, $Res Function(_$_RandomierState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? min = freezed,
    Object? max = freezed,
    Object? generatedNumber = freezed,
  }) {
    return _then(_$_RandomierState(
      min: freezed == min ? _value.min! : min,
      max: freezed == max ? _value.max! : max,
      generatedNumber: freezed == generatedNumber
          ? _value.generatedNumber
          : generatedNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_RandomierState extends _RandomierState {
  const _$_RandomierState({this.min = 0, this.max = 0, this.generatedNumber})
      : super._();

  @override
  @JsonKey()
  final dynamic min;
  @override
  @JsonKey()
  final dynamic max;
  @override
  final int? generatedNumber;

  @override
  String toString() {
    return 'RandomierState(min: $min, max: $max, generatedNumber: $generatedNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RandomierState &&
            const DeepCollectionEquality().equals(other.min, min) &&
            const DeepCollectionEquality().equals(other.max, max) &&
            (identical(other.generatedNumber, generatedNumber) ||
                other.generatedNumber == generatedNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(min),
      const DeepCollectionEquality().hash(max),
      generatedNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RandomierStateCopyWith<_$_RandomierState> get copyWith =>
      __$$_RandomierStateCopyWithImpl<_$_RandomierState>(this, _$identity);
}

abstract class _RandomierState extends RandomierState {
  const factory _RandomierState(
      {final dynamic min,
      final dynamic max,
      final int? generatedNumber}) = _$_RandomierState;
  const _RandomierState._() : super._();

  @override
  dynamic get min;
  @override
  dynamic get max;
  @override
  int? get generatedNumber;
  @override
  @JsonKey(ignore: true)
  _$$_RandomierStateCopyWith<_$_RandomierState> get copyWith =>
      throw _privateConstructorUsedError;
}
