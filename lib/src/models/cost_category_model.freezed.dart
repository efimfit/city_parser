// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cost_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CostCategoryModel _$CostCategoryModelFromJson(Map<String, dynamic> json) {
  return _CostCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$CostCategoryModel {
  String get label => throw _privateConstructorUsedError;
  List<CategoryElementModel> get elements => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CostCategoryModelCopyWith<CostCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CostCategoryModelCopyWith<$Res> {
  factory $CostCategoryModelCopyWith(
          CostCategoryModel value, $Res Function(CostCategoryModel) then) =
      _$CostCategoryModelCopyWithImpl<$Res, CostCategoryModel>;
  @useResult
  $Res call({String label, List<CategoryElementModel> elements});
}

/// @nodoc
class _$CostCategoryModelCopyWithImpl<$Res, $Val extends CostCategoryModel>
    implements $CostCategoryModelCopyWith<$Res> {
  _$CostCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? elements = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      elements: null == elements
          ? _value.elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<CategoryElementModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CostCategoryModelCopyWith<$Res>
    implements $CostCategoryModelCopyWith<$Res> {
  factory _$$_CostCategoryModelCopyWith(_$_CostCategoryModel value,
          $Res Function(_$_CostCategoryModel) then) =
      __$$_CostCategoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, List<CategoryElementModel> elements});
}

/// @nodoc
class __$$_CostCategoryModelCopyWithImpl<$Res>
    extends _$CostCategoryModelCopyWithImpl<$Res, _$_CostCategoryModel>
    implements _$$_CostCategoryModelCopyWith<$Res> {
  __$$_CostCategoryModelCopyWithImpl(
      _$_CostCategoryModel _value, $Res Function(_$_CostCategoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? elements = null,
  }) {
    return _then(_$_CostCategoryModel(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      elements: null == elements
          ? _value._elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<CategoryElementModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CostCategoryModel implements _CostCategoryModel {
  const _$_CostCategoryModel(
      {required this.label, required final List<CategoryElementModel> elements})
      : _elements = elements;

  factory _$_CostCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_CostCategoryModelFromJson(json);

  @override
  final String label;
  final List<CategoryElementModel> _elements;
  @override
  List<CategoryElementModel> get elements {
    if (_elements is EqualUnmodifiableListView) return _elements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_elements);
  }

  @override
  String toString() {
    return 'CostCategoryModel(label: $label, elements: $elements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CostCategoryModel &&
            (identical(other.label, label) || other.label == label) &&
            const DeepCollectionEquality().equals(other._elements, _elements));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, label, const DeepCollectionEquality().hash(_elements));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CostCategoryModelCopyWith<_$_CostCategoryModel> get copyWith =>
      __$$_CostCategoryModelCopyWithImpl<_$_CostCategoryModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CostCategoryModelToJson(
      this,
    );
  }
}

abstract class _CostCategoryModel implements CostCategoryModel {
  const factory _CostCategoryModel(
          {required final String label,
          required final List<CategoryElementModel> elements}) =
      _$_CostCategoryModel;

  factory _CostCategoryModel.fromJson(Map<String, dynamic> json) =
      _$_CostCategoryModel.fromJson;

  @override
  String get label;
  @override
  List<CategoryElementModel> get elements;
  @override
  @JsonKey(ignore: true)
  _$$_CostCategoryModelCopyWith<_$_CostCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
