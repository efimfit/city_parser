// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'estimated_costs_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EstimatedCostsModel {
  List<String>? get singlePerson => throw _privateConstructorUsedError;
  List<String>? get fourPersons => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EstimatedCostsModelCopyWith<EstimatedCostsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EstimatedCostsModelCopyWith<$Res> {
  factory $EstimatedCostsModelCopyWith(
          EstimatedCostsModel value, $Res Function(EstimatedCostsModel) then) =
      _$EstimatedCostsModelCopyWithImpl<$Res, EstimatedCostsModel>;
  @useResult
  $Res call({List<String>? singlePerson, List<String>? fourPersons});
}

/// @nodoc
class _$EstimatedCostsModelCopyWithImpl<$Res, $Val extends EstimatedCostsModel>
    implements $EstimatedCostsModelCopyWith<$Res> {
  _$EstimatedCostsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? singlePerson = freezed,
    Object? fourPersons = freezed,
  }) {
    return _then(_value.copyWith(
      singlePerson: freezed == singlePerson
          ? _value.singlePerson
          : singlePerson // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      fourPersons: freezed == fourPersons
          ? _value.fourPersons
          : fourPersons // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EstimatedCostsModelCopyWith<$Res>
    implements $EstimatedCostsModelCopyWith<$Res> {
  factory _$$_EstimatedCostsModelCopyWith(_$_EstimatedCostsModel value,
          $Res Function(_$_EstimatedCostsModel) then) =
      __$$_EstimatedCostsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String>? singlePerson, List<String>? fourPersons});
}

/// @nodoc
class __$$_EstimatedCostsModelCopyWithImpl<$Res>
    extends _$EstimatedCostsModelCopyWithImpl<$Res, _$_EstimatedCostsModel>
    implements _$$_EstimatedCostsModelCopyWith<$Res> {
  __$$_EstimatedCostsModelCopyWithImpl(_$_EstimatedCostsModel _value,
      $Res Function(_$_EstimatedCostsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? singlePerson = freezed,
    Object? fourPersons = freezed,
  }) {
    return _then(_$_EstimatedCostsModel(
      singlePerson: freezed == singlePerson
          ? _value._singlePerson
          : singlePerson // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      fourPersons: freezed == fourPersons
          ? _value._fourPersons
          : fourPersons // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$_EstimatedCostsModel implements _EstimatedCostsModel {
  const _$_EstimatedCostsModel(
      {final List<String>? singlePerson, final List<String>? fourPersons})
      : _singlePerson = singlePerson,
        _fourPersons = fourPersons;

  final List<String>? _singlePerson;
  @override
  List<String>? get singlePerson {
    final value = _singlePerson;
    if (value == null) return null;
    if (_singlePerson is EqualUnmodifiableListView) return _singlePerson;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _fourPersons;
  @override
  List<String>? get fourPersons {
    final value = _fourPersons;
    if (value == null) return null;
    if (_fourPersons is EqualUnmodifiableListView) return _fourPersons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'EstimatedCostsModel(singlePerson: $singlePerson, fourPersons: $fourPersons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EstimatedCostsModel &&
            const DeepCollectionEquality()
                .equals(other._singlePerson, _singlePerson) &&
            const DeepCollectionEquality()
                .equals(other._fourPersons, _fourPersons));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_singlePerson),
      const DeepCollectionEquality().hash(_fourPersons));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EstimatedCostsModelCopyWith<_$_EstimatedCostsModel> get copyWith =>
      __$$_EstimatedCostsModelCopyWithImpl<_$_EstimatedCostsModel>(
          this, _$identity);
}

abstract class _EstimatedCostsModel implements EstimatedCostsModel {
  const factory _EstimatedCostsModel(
      {final List<String>? singlePerson,
      final List<String>? fourPersons}) = _$_EstimatedCostsModel;

  @override
  List<String>? get singlePerson;
  @override
  List<String>? get fourPersons;
  @override
  @JsonKey(ignore: true)
  _$$_EstimatedCostsModelCopyWith<_$_EstimatedCostsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
