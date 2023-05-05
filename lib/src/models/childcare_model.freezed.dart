// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'childcare_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChildCareModel {
  List<String?> get preschool => throw _privateConstructorUsedError;
  List<String?> get primarySchool => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChildCareModelCopyWith<ChildCareModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildCareModelCopyWith<$Res> {
  factory $ChildCareModelCopyWith(
          ChildCareModel value, $Res Function(ChildCareModel) then) =
      _$ChildCareModelCopyWithImpl<$Res, ChildCareModel>;
  @useResult
  $Res call({List<String?> preschool, List<String?> primarySchool});
}

/// @nodoc
class _$ChildCareModelCopyWithImpl<$Res, $Val extends ChildCareModel>
    implements $ChildCareModelCopyWith<$Res> {
  _$ChildCareModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? preschool = null,
    Object? primarySchool = null,
  }) {
    return _then(_value.copyWith(
      preschool: null == preschool
          ? _value.preschool
          : preschool // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      primarySchool: null == primarySchool
          ? _value.primarySchool
          : primarySchool // ignore: cast_nullable_to_non_nullable
              as List<String?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChildCareModelCopyWith<$Res>
    implements $ChildCareModelCopyWith<$Res> {
  factory _$$_ChildCareModelCopyWith(
          _$_ChildCareModel value, $Res Function(_$_ChildCareModel) then) =
      __$$_ChildCareModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String?> preschool, List<String?> primarySchool});
}

/// @nodoc
class __$$_ChildCareModelCopyWithImpl<$Res>
    extends _$ChildCareModelCopyWithImpl<$Res, _$_ChildCareModel>
    implements _$$_ChildCareModelCopyWith<$Res> {
  __$$_ChildCareModelCopyWithImpl(
      _$_ChildCareModel _value, $Res Function(_$_ChildCareModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? preschool = null,
    Object? primarySchool = null,
  }) {
    return _then(_$_ChildCareModel(
      preschool: null == preschool
          ? _value._preschool
          : preschool // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      primarySchool: null == primarySchool
          ? _value._primarySchool
          : primarySchool // ignore: cast_nullable_to_non_nullable
              as List<String?>,
    ));
  }
}

/// @nodoc

class _$_ChildCareModel implements _ChildCareModel {
  const _$_ChildCareModel(
      {required final List<String?> preschool,
      required final List<String?> primarySchool})
      : _preschool = preschool,
        _primarySchool = primarySchool;

  final List<String?> _preschool;
  @override
  List<String?> get preschool {
    if (_preschool is EqualUnmodifiableListView) return _preschool;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_preschool);
  }

  final List<String?> _primarySchool;
  @override
  List<String?> get primarySchool {
    if (_primarySchool is EqualUnmodifiableListView) return _primarySchool;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_primarySchool);
  }

  @override
  String toString() {
    return 'ChildCareModel(preschool: $preschool, primarySchool: $primarySchool)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChildCareModel &&
            const DeepCollectionEquality()
                .equals(other._preschool, _preschool) &&
            const DeepCollectionEquality()
                .equals(other._primarySchool, _primarySchool));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_preschool),
      const DeepCollectionEquality().hash(_primarySchool));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChildCareModelCopyWith<_$_ChildCareModel> get copyWith =>
      __$$_ChildCareModelCopyWithImpl<_$_ChildCareModel>(this, _$identity);
}

abstract class _ChildCareModel implements ChildCareModel {
  const factory _ChildCareModel(
      {required final List<String?> preschool,
      required final List<String?> primarySchool}) = _$_ChildCareModel;

  @override
  List<String?> get preschool;
  @override
  List<String?> get primarySchool;
  @override
  @JsonKey(ignore: true)
  _$$_ChildCareModelCopyWith<_$_ChildCareModel> get copyWith =>
      throw _privateConstructorUsedError;
}
