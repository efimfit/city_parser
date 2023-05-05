// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'apartment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApartmentModel {
  List<String?> get cityCenter => throw _privateConstructorUsedError;
  List<String?> get outsideCenter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApartmentModelCopyWith<ApartmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApartmentModelCopyWith<$Res> {
  factory $ApartmentModelCopyWith(
          ApartmentModel value, $Res Function(ApartmentModel) then) =
      _$ApartmentModelCopyWithImpl<$Res, ApartmentModel>;
  @useResult
  $Res call({List<String?> cityCenter, List<String?> outsideCenter});
}

/// @nodoc
class _$ApartmentModelCopyWithImpl<$Res, $Val extends ApartmentModel>
    implements $ApartmentModelCopyWith<$Res> {
  _$ApartmentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityCenter = null,
    Object? outsideCenter = null,
  }) {
    return _then(_value.copyWith(
      cityCenter: null == cityCenter
          ? _value.cityCenter
          : cityCenter // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      outsideCenter: null == outsideCenter
          ? _value.outsideCenter
          : outsideCenter // ignore: cast_nullable_to_non_nullable
              as List<String?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApartmentModelCopyWith<$Res>
    implements $ApartmentModelCopyWith<$Res> {
  factory _$$_ApartmentModelCopyWith(
          _$_ApartmentModel value, $Res Function(_$_ApartmentModel) then) =
      __$$_ApartmentModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String?> cityCenter, List<String?> outsideCenter});
}

/// @nodoc
class __$$_ApartmentModelCopyWithImpl<$Res>
    extends _$ApartmentModelCopyWithImpl<$Res, _$_ApartmentModel>
    implements _$$_ApartmentModelCopyWith<$Res> {
  __$$_ApartmentModelCopyWithImpl(
      _$_ApartmentModel _value, $Res Function(_$_ApartmentModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityCenter = null,
    Object? outsideCenter = null,
  }) {
    return _then(_$_ApartmentModel(
      cityCenter: null == cityCenter
          ? _value._cityCenter
          : cityCenter // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      outsideCenter: null == outsideCenter
          ? _value._outsideCenter
          : outsideCenter // ignore: cast_nullable_to_non_nullable
              as List<String?>,
    ));
  }
}

/// @nodoc

class _$_ApartmentModel implements _ApartmentModel {
  const _$_ApartmentModel(
      {required final List<String?> cityCenter,
      required final List<String?> outsideCenter})
      : _cityCenter = cityCenter,
        _outsideCenter = outsideCenter;

  final List<String?> _cityCenter;
  @override
  List<String?> get cityCenter {
    if (_cityCenter is EqualUnmodifiableListView) return _cityCenter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cityCenter);
  }

  final List<String?> _outsideCenter;
  @override
  List<String?> get outsideCenter {
    if (_outsideCenter is EqualUnmodifiableListView) return _outsideCenter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_outsideCenter);
  }

  @override
  String toString() {
    return 'ApartmentModel(cityCenter: $cityCenter, outsideCenter: $outsideCenter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApartmentModel &&
            const DeepCollectionEquality()
                .equals(other._cityCenter, _cityCenter) &&
            const DeepCollectionEquality()
                .equals(other._outsideCenter, _outsideCenter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cityCenter),
      const DeepCollectionEquality().hash(_outsideCenter));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApartmentModelCopyWith<_$_ApartmentModel> get copyWith =>
      __$$_ApartmentModelCopyWithImpl<_$_ApartmentModel>(this, _$identity);
}

abstract class _ApartmentModel implements ApartmentModel {
  const factory _ApartmentModel(
      {required final List<String?> cityCenter,
      required final List<String?> outsideCenter}) = _$_ApartmentModel;

  @override
  List<String?> get cityCenter;
  @override
  List<String?> get outsideCenter;
  @override
  @JsonKey(ignore: true)
  _$$_ApartmentModelCopyWith<_$_ApartmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
