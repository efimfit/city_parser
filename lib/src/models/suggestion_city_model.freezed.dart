// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'suggestion_city_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SuggestionCityModel _$SuggestionCityModelFromJson(Map<String, dynamic> json) {
  return _SuggestionCityModel.fromJson(json);
}

/// @nodoc
mixin _$SuggestionCityModel {
  String get label => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuggestionCityModelCopyWith<SuggestionCityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuggestionCityModelCopyWith<$Res> {
  factory $SuggestionCityModelCopyWith(
          SuggestionCityModel value, $Res Function(SuggestionCityModel) then) =
      _$SuggestionCityModelCopyWithImpl<$Res, SuggestionCityModel>;
  @useResult
  $Res call({String label, int id});
}

/// @nodoc
class _$SuggestionCityModelCopyWithImpl<$Res, $Val extends SuggestionCityModel>
    implements $SuggestionCityModelCopyWith<$Res> {
  _$SuggestionCityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? id = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SuggestionCityModelCopyWith<$Res>
    implements $SuggestionCityModelCopyWith<$Res> {
  factory _$$_SuggestionCityModelCopyWith(_$_SuggestionCityModel value,
          $Res Function(_$_SuggestionCityModel) then) =
      __$$_SuggestionCityModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, int id});
}

/// @nodoc
class __$$_SuggestionCityModelCopyWithImpl<$Res>
    extends _$SuggestionCityModelCopyWithImpl<$Res, _$_SuggestionCityModel>
    implements _$$_SuggestionCityModelCopyWith<$Res> {
  __$$_SuggestionCityModelCopyWithImpl(_$_SuggestionCityModel _value,
      $Res Function(_$_SuggestionCityModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? id = null,
  }) {
    return _then(_$_SuggestionCityModel(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SuggestionCityModel implements _SuggestionCityModel {
  const _$_SuggestionCityModel({required this.label, required this.id});

  factory _$_SuggestionCityModel.fromJson(Map<String, dynamic> json) =>
      _$$_SuggestionCityModelFromJson(json);

  @override
  final String label;
  @override
  final int id;

  @override
  String toString() {
    return 'SuggestionCityModel(label: $label, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuggestionCityModel &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, label, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuggestionCityModelCopyWith<_$_SuggestionCityModel> get copyWith =>
      __$$_SuggestionCityModelCopyWithImpl<_$_SuggestionCityModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SuggestionCityModelToJson(
      this,
    );
  }
}

abstract class _SuggestionCityModel implements SuggestionCityModel {
  const factory _SuggestionCityModel(
      {required final String label,
      required final int id}) = _$_SuggestionCityModel;

  factory _SuggestionCityModel.fromJson(Map<String, dynamic> json) =
      _$_SuggestionCityModel.fromJson;

  @override
  String get label;
  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_SuggestionCityModelCopyWith<_$_SuggestionCityModel> get copyWith =>
      throw _privateConstructorUsedError;
}
