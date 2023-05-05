// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'salaries_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SalariesModel {
  List<String> get salary => throw _privateConstructorUsedError;
  List<String> get mortgage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SalariesModelCopyWith<SalariesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalariesModelCopyWith<$Res> {
  factory $SalariesModelCopyWith(
          SalariesModel value, $Res Function(SalariesModel) then) =
      _$SalariesModelCopyWithImpl<$Res, SalariesModel>;
  @useResult
  $Res call({List<String> salary, List<String> mortgage});
}

/// @nodoc
class _$SalariesModelCopyWithImpl<$Res, $Val extends SalariesModel>
    implements $SalariesModelCopyWith<$Res> {
  _$SalariesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salary = null,
    Object? mortgage = null,
  }) {
    return _then(_value.copyWith(
      salary: null == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mortgage: null == mortgage
          ? _value.mortgage
          : mortgage // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SalariesModelCopyWith<$Res>
    implements $SalariesModelCopyWith<$Res> {
  factory _$$_SalariesModelCopyWith(
          _$_SalariesModel value, $Res Function(_$_SalariesModel) then) =
      __$$_SalariesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> salary, List<String> mortgage});
}

/// @nodoc
class __$$_SalariesModelCopyWithImpl<$Res>
    extends _$SalariesModelCopyWithImpl<$Res, _$_SalariesModel>
    implements _$$_SalariesModelCopyWith<$Res> {
  __$$_SalariesModelCopyWithImpl(
      _$_SalariesModel _value, $Res Function(_$_SalariesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salary = null,
    Object? mortgage = null,
  }) {
    return _then(_$_SalariesModel(
      salary: null == salary
          ? _value._salary
          : salary // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mortgage: null == mortgage
          ? _value._mortgage
          : mortgage // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_SalariesModel implements _SalariesModel {
  const _$_SalariesModel(
      {required final List<String> salary,
      required final List<String> mortgage})
      : _salary = salary,
        _mortgage = mortgage;

  final List<String> _salary;
  @override
  List<String> get salary {
    if (_salary is EqualUnmodifiableListView) return _salary;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_salary);
  }

  final List<String> _mortgage;
  @override
  List<String> get mortgage {
    if (_mortgage is EqualUnmodifiableListView) return _mortgage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mortgage);
  }

  @override
  String toString() {
    return 'SalariesModel(salary: $salary, mortgage: $mortgage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SalariesModel &&
            const DeepCollectionEquality().equals(other._salary, _salary) &&
            const DeepCollectionEquality().equals(other._mortgage, _mortgage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_salary),
      const DeepCollectionEquality().hash(_mortgage));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SalariesModelCopyWith<_$_SalariesModel> get copyWith =>
      __$$_SalariesModelCopyWithImpl<_$_SalariesModel>(this, _$identity);
}

abstract class _SalariesModel implements SalariesModel {
  const factory _SalariesModel(
      {required final List<String> salary,
      required final List<String> mortgage}) = _$_SalariesModel;

  @override
  List<String> get salary;
  @override
  List<String> get mortgage;
  @override
  @JsonKey(ignore: true)
  _$$_SalariesModelCopyWith<_$_SalariesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
