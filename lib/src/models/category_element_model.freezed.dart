// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_element_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryElementModel {
  String get label => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryElementModelCopyWith<CategoryElementModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryElementModelCopyWith<$Res> {
  factory $CategoryElementModelCopyWith(CategoryElementModel value,
          $Res Function(CategoryElementModel) then) =
      _$CategoryElementModelCopyWithImpl<$Res, CategoryElementModel>;
  @useResult
  $Res call({String label, String value});
}

/// @nodoc
class _$CategoryElementModelCopyWithImpl<$Res,
        $Val extends CategoryElementModel>
    implements $CategoryElementModelCopyWith<$Res> {
  _$CategoryElementModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryElementModelCopyWith<$Res>
    implements $CategoryElementModelCopyWith<$Res> {
  factory _$$_CategoryElementModelCopyWith(_$_CategoryElementModel value,
          $Res Function(_$_CategoryElementModel) then) =
      __$$_CategoryElementModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, String value});
}

/// @nodoc
class __$$_CategoryElementModelCopyWithImpl<$Res>
    extends _$CategoryElementModelCopyWithImpl<$Res, _$_CategoryElementModel>
    implements _$$_CategoryElementModelCopyWith<$Res> {
  __$$_CategoryElementModelCopyWithImpl(_$_CategoryElementModel _value,
      $Res Function(_$_CategoryElementModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? value = null,
  }) {
    return _then(_$_CategoryElementModel(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CategoryElementModel implements _CategoryElementModel {
  const _$_CategoryElementModel({required this.label, required this.value});

  @override
  final String label;
  @override
  final String value;

  @override
  String toString() {
    return 'CategoryElementModel(label: $label, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryElementModel &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, label, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryElementModelCopyWith<_$_CategoryElementModel> get copyWith =>
      __$$_CategoryElementModelCopyWithImpl<_$_CategoryElementModel>(
          this, _$identity);
}

abstract class _CategoryElementModel implements CategoryElementModel {
  const factory _CategoryElementModel(
      {required final String label,
      required final String value}) = _$_CategoryElementModel;

  @override
  String get label;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryElementModelCopyWith<_$_CategoryElementModel> get copyWith =>
      throw _privateConstructorUsedError;
}
