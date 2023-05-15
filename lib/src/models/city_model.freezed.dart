// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CityModel _$CityModelFromJson(Map<String, dynamic> json) {
  return _CityModel.fromJson(json);
}

/// @nodoc
mixin _$CityModel {
  String get label => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  List<CategoryGroupModel> get categories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityModelCopyWith<CityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityModelCopyWith<$Res> {
  factory $CityModelCopyWith(CityModel value, $Res Function(CityModel) then) =
      _$CityModelCopyWithImpl<$Res, CityModel>;
  @useResult
  $Res call({String label, int id, List<CategoryGroupModel> categories});
}

/// @nodoc
class _$CityModelCopyWithImpl<$Res, $Val extends CityModel>
    implements $CityModelCopyWith<$Res> {
  _$CityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? id = null,
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryGroupModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CityModelCopyWith<$Res> implements $CityModelCopyWith<$Res> {
  factory _$$_CityModelCopyWith(
          _$_CityModel value, $Res Function(_$_CityModel) then) =
      __$$_CityModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, int id, List<CategoryGroupModel> categories});
}

/// @nodoc
class __$$_CityModelCopyWithImpl<$Res>
    extends _$CityModelCopyWithImpl<$Res, _$_CityModel>
    implements _$$_CityModelCopyWith<$Res> {
  __$$_CityModelCopyWithImpl(
      _$_CityModel _value, $Res Function(_$_CityModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? id = null,
    Object? categories = null,
  }) {
    return _then(_$_CityModel(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryGroupModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CityModel implements _CityModel {
  const _$_CityModel(
      {required this.label,
      required this.id,
      required final List<CategoryGroupModel> categories})
      : _categories = categories;

  factory _$_CityModel.fromJson(Map<String, dynamic> json) =>
      _$$_CityModelFromJson(json);

  @override
  final String label;
  @override
  final int id;
  final List<CategoryGroupModel> _categories;
  @override
  List<CategoryGroupModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'CityModel(label: $label, id: $id, categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CityModel &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, label, id, const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CityModelCopyWith<_$_CityModel> get copyWith =>
      __$$_CityModelCopyWithImpl<_$_CityModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CityModelToJson(
      this,
    );
  }
}

abstract class _CityModel implements CityModel {
  const factory _CityModel(
      {required final String label,
      required final int id,
      required final List<CategoryGroupModel> categories}) = _$_CityModel;

  factory _CityModel.fromJson(Map<String, dynamic> json) =
      _$_CityModel.fromJson;

  @override
  String get label;
  @override
  int get id;
  @override
  List<CategoryGroupModel> get categories;
  @override
  @JsonKey(ignore: true)
  _$$_CityModelCopyWith<_$_CityModel> get copyWith =>
      throw _privateConstructorUsedError;
}
