// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Joke _$JokeFromJson(Map<String, dynamic> json) {
  return _Joke.fromJson(json);
}

/// @nodoc
mixin _$Joke {
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JokeCopyWith<Joke> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JokeCopyWith<$Res> {
  factory $JokeCopyWith(Joke value, $Res Function(Joke) then) =
      _$JokeCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$JokeCopyWithImpl<$Res> implements $JokeCopyWith<$Res> {
  _$JokeCopyWithImpl(this._value, this._then);

  final Joke _value;
  // ignore: unused_field
  final $Res Function(Joke) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_JokeCopyWith<$Res> implements $JokeCopyWith<$Res> {
  factory _$$_JokeCopyWith(_$_Joke value, $Res Function(_$_Joke) then) =
      __$$_JokeCopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

/// @nodoc
class __$$_JokeCopyWithImpl<$Res> extends _$JokeCopyWithImpl<$Res>
    implements _$$_JokeCopyWith<$Res> {
  __$$_JokeCopyWithImpl(_$_Joke _value, $Res Function(_$_Joke) _then)
      : super(_value, (v) => _then(v as _$_Joke));

  @override
  _$_Joke get _value => super._value as _$_Joke;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_Joke(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Joke implements _Joke {
  const _$_Joke({required this.value});

  factory _$_Joke.fromJson(Map<String, dynamic> json) => _$$_JokeFromJson(json);

  @override
  final String value;

  @override
  String toString() {
    return 'Joke(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Joke &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_JokeCopyWith<_$_Joke> get copyWith =>
      __$$_JokeCopyWithImpl<_$_Joke>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JokeToJson(
      this,
    );
  }
}

abstract class _Joke implements Joke {
  const factory _Joke({required final String value}) = _$_Joke;

  factory _Joke.fromJson(Map<String, dynamic> json) = _$_Joke.fromJson;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_JokeCopyWith<_$_Joke> get copyWith => throw _privateConstructorUsedError;
}
