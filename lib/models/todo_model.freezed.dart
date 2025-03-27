// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, non_nullable_equals_parameter
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ToDo {
  int get id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ToDoCopyWith<ToDo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToDoCopyWith<$Res> {
  factory $ToDoCopyWith(ToDo value, $Res Function(ToDo) then) =
      _$ToDoCopyWithImpl<$Res, ToDo>;
  @useResult
  $Res call({int id, String description, bool isCompleted});
}

/// @nodoc
class _$ToDoCopyWithImpl<$Res, $Val extends ToDo>
    implements $ToDoCopyWith<$Res> {
  _$ToDoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? isCompleted = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ToDoCopyWith<$Res> implements $ToDoCopyWith<$Res> {
  factory _$$_ToDoCopyWith(_$_ToDo value, $Res Function(_$_ToDo) then) =
      __$$_ToDoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String description, bool isCompleted});
}

/// @nodoc
class __$$_ToDoCopyWithImpl<$Res> extends _$ToDoCopyWithImpl<$Res, _$_ToDo>
    implements _$$_ToDoCopyWith<$Res> {
  __$$_ToDoCopyWithImpl(_$_ToDo _value, $Res Function(_$_ToDo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? isCompleted = null,
  }) {
    return _then(_$_ToDo(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ToDo implements _ToDo {
  const _$_ToDo(this.id, this.description, this.isCompleted);

  @override
  final int id;
  @override
  final String description;
  @override
  final bool isCompleted;

  @override
  String toString() {
    return 'ToDo(id: $id, description: $description, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ToDo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, description, isCompleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ToDoCopyWith<_$_ToDo> get copyWith =>
      __$$_ToDoCopyWithImpl<_$_ToDo>(this, _$identity);
}

abstract class _ToDo implements ToDo {
  const factory _ToDo(
      final int id, final String description, final bool isCompleted) = _$_ToDo;

  @override
  int get id;
  @override
  String get description;
  @override
  bool get isCompleted;
  @override
  @JsonKey(ignore: true)
  _$$_ToDoCopyWith<_$_ToDo> get copyWith => throw _privateConstructorUsedError;
}

ToDoCopyWith _$ToDoCopyWithFromJson(Map<String, dynamic> json) {
  return _ToDoCopyWith.fromJson(json);
}

/// @nodoc
mixin _$ToDoCopyWith {
  int get id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToDoCopyWithCopyWith<ToDoCopyWith> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToDoCopyWithCopyWith<$Res> {
  factory $ToDoCopyWithCopyWith(
          ToDoCopyWith value, $Res Function(ToDoCopyWith) then) =
      _$ToDoCopyWithCopyWithImpl<$Res, ToDoCopyWith>;
  @useResult
  $Res call({int id, String description, bool isCompleted});
}

/// @nodoc
class _$ToDoCopyWithCopyWithImpl<$Res, $Val extends ToDoCopyWith>
    implements $ToDoCopyWithCopyWith<$Res> {
  _$ToDoCopyWithCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? isCompleted = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ToDoCopyWithCopyWith<$Res>
    implements $ToDoCopyWithCopyWith<$Res> {
  factory _$$_ToDoCopyWithCopyWith(
          _$_ToDoCopyWith value, $Res Function(_$_ToDoCopyWith) then) =
      __$$_ToDoCopyWithCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String description, bool isCompleted});
}

/// @nodoc
class __$$_ToDoCopyWithCopyWithImpl<$Res>
    extends _$ToDoCopyWithCopyWithImpl<$Res, _$_ToDoCopyWith>
    implements _$$_ToDoCopyWithCopyWith<$Res> {
  __$$_ToDoCopyWithCopyWithImpl(
      _$_ToDoCopyWith _value, $Res Function(_$_ToDoCopyWith) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? isCompleted = null,
  }) {
    return _then(_$_ToDoCopyWith(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ToDoCopyWith implements _ToDoCopyWith {
  const _$_ToDoCopyWith(this.id, this.description, this.isCompleted);

  factory _$_ToDoCopyWith.fromJson(Map<String, dynamic> json) =>
      _$$_ToDoCopyWithFromJson(json);

  @override
  final int id;
  @override
  final String description;
  @override
  final bool isCompleted;

  @override
  String toString() {
    return 'ToDoCopyWith(id: $id, description: $description, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ToDoCopyWith &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, description, isCompleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ToDoCopyWithCopyWith<_$_ToDoCopyWith> get copyWith =>
      __$$_ToDoCopyWithCopyWithImpl<_$_ToDoCopyWith>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ToDoCopyWithToJson(
      this,
    );
  }
}

abstract class _ToDoCopyWith implements ToDoCopyWith {
  const factory _ToDoCopyWith(
          final int id, final String description, final bool isCompleted) =
      _$_ToDoCopyWith;

  factory _ToDoCopyWith.fromJson(Map<String, dynamic> json) =
      _$_ToDoCopyWith.fromJson;

  @override
  int get id;
  @override
  String get description;
  @override
  bool get isCompleted;
  @override
  @JsonKey(ignore: true)
  _$$_ToDoCopyWithCopyWith<_$_ToDoCopyWith> get copyWith =>
      throw _privateConstructorUsedError;
}
