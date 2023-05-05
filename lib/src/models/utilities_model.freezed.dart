// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'utilities_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UtilitiesModel {
  List<String> get basic => throw _privateConstructorUsedError;
  List<String> get mobile => throw _privateConstructorUsedError;
  List<String> get internet => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UtilitiesModelCopyWith<UtilitiesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UtilitiesModelCopyWith<$Res> {
  factory $UtilitiesModelCopyWith(
          UtilitiesModel value, $Res Function(UtilitiesModel) then) =
      _$UtilitiesModelCopyWithImpl<$Res, UtilitiesModel>;
  @useResult
  $Res call({List<String> basic, List<String> mobile, List<String> internet});
}

/// @nodoc
class _$UtilitiesModelCopyWithImpl<$Res, $Val extends UtilitiesModel>
    implements $UtilitiesModelCopyWith<$Res> {
  _$UtilitiesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? basic = null,
    Object? mobile = null,
    Object? internet = null,
  }) {
    return _then(_value.copyWith(
      basic: null == basic
          ? _value.basic
          : basic // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as List<String>,
      internet: null == internet
          ? _value.internet
          : internet // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UtilitiesModelCopyWith<$Res>
    implements $UtilitiesModelCopyWith<$Res> {
  factory _$$_UtilitiesModelCopyWith(
          _$_UtilitiesModel value, $Res Function(_$_UtilitiesModel) then) =
      __$$_UtilitiesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> basic, List<String> mobile, List<String> internet});
}

/// @nodoc
class __$$_UtilitiesModelCopyWithImpl<$Res>
    extends _$UtilitiesModelCopyWithImpl<$Res, _$_UtilitiesModel>
    implements _$$_UtilitiesModelCopyWith<$Res> {
  __$$_UtilitiesModelCopyWithImpl(
      _$_UtilitiesModel _value, $Res Function(_$_UtilitiesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? basic = null,
    Object? mobile = null,
    Object? internet = null,
  }) {
    return _then(_$_UtilitiesModel(
      basic: null == basic
          ? _value._basic
          : basic // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mobile: null == mobile
          ? _value._mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as List<String>,
      internet: null == internet
          ? _value._internet
          : internet // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_UtilitiesModel implements _UtilitiesModel {
  const _$_UtilitiesModel(
      {required final List<String> basic,
      required final List<String> mobile,
      required final List<String> internet})
      : _basic = basic,
        _mobile = mobile,
        _internet = internet;

  final List<String> _basic;
  @override
  List<String> get basic {
    if (_basic is EqualUnmodifiableListView) return _basic;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_basic);
  }

  final List<String> _mobile;
  @override
  List<String> get mobile {
    if (_mobile is EqualUnmodifiableListView) return _mobile;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mobile);
  }

  final List<String> _internet;
  @override
  List<String> get internet {
    if (_internet is EqualUnmodifiableListView) return _internet;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_internet);
  }

  @override
  String toString() {
    return 'UtilitiesModel(basic: $basic, mobile: $mobile, internet: $internet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UtilitiesModel &&
            const DeepCollectionEquality().equals(other._basic, _basic) &&
            const DeepCollectionEquality().equals(other._mobile, _mobile) &&
            const DeepCollectionEquality().equals(other._internet, _internet));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_basic),
      const DeepCollectionEquality().hash(_mobile),
      const DeepCollectionEquality().hash(_internet));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UtilitiesModelCopyWith<_$_UtilitiesModel> get copyWith =>
      __$$_UtilitiesModelCopyWithImpl<_$_UtilitiesModel>(this, _$identity);
}

abstract class _UtilitiesModel implements UtilitiesModel {
  const factory _UtilitiesModel(
      {required final List<String> basic,
      required final List<String> mobile,
      required final List<String> internet}) = _$_UtilitiesModel;

  @override
  List<String> get basic;
  @override
  List<String> get mobile;
  @override
  List<String> get internet;
  @override
  @JsonKey(ignore: true)
  _$$_UtilitiesModelCopyWith<_$_UtilitiesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
