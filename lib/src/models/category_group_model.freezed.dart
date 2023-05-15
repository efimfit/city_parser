// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_group_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryGroupModel _$CategoryGroupModelFromJson(Map<String, dynamic> json) {
  return _CategoryGroupModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryGroupModel {
  String get label => throw _privateConstructorUsedError;
  List<CategoryElementModel> get elements => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryGroupModelCopyWith<CategoryGroupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryGroupModelCopyWith<$Res> {
  factory $CategoryGroupModelCopyWith(
          CategoryGroupModel value, $Res Function(CategoryGroupModel) then) =
      _$CategoryGroupModelCopyWithImpl<$Res, CategoryGroupModel>;
  @useResult
  $Res call({String label, List<CategoryElementModel> elements});
}

/// @nodoc
class _$CategoryGroupModelCopyWithImpl<$Res, $Val extends CategoryGroupModel>
    implements $CategoryGroupModelCopyWith<$Res> {
  _$CategoryGroupModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_CategoryGroupModelCopyWith<$Res>
    implements $CategoryGroupModelCopyWith<$Res> {
  factory _$$_CategoryGroupModelCopyWith(_$_CategoryGroupModel value,
          $Res Function(_$_CategoryGroupModel) then) =
      __$$_CategoryGroupModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, List<CategoryElementModel> elements});
}

/// @nodoc
class __$$_CategoryGroupModelCopyWithImpl<$Res>
    extends _$CategoryGroupModelCopyWithImpl<$Res, _$_CategoryGroupModel>
    implements _$$_CategoryGroupModelCopyWith<$Res> {
  __$$_CategoryGroupModelCopyWithImpl(
      _$_CategoryGroupModel _value, $Res Function(_$_CategoryGroupModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? elements = null,
  }) {
    return _then(_$_CategoryGroupModel(
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
class _$_CategoryGroupModel implements _CategoryGroupModel {
  const _$_CategoryGroupModel(
      {required this.label, required final List<CategoryElementModel> elements})
      : _elements = elements;

  factory _$_CategoryGroupModel.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryGroupModelFromJson(json);

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
    return 'CategoryGroupModel(label: $label, elements: $elements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryGroupModel &&
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
  _$$_CategoryGroupModelCopyWith<_$_CategoryGroupModel> get copyWith =>
      __$$_CategoryGroupModelCopyWithImpl<_$_CategoryGroupModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryGroupModelToJson(
      this,
    );
  }
}

abstract class _CategoryGroupModel implements CategoryGroupModel {
  const factory _CategoryGroupModel(
          {required final String label,
          required final List<CategoryElementModel> elements}) =
      _$_CategoryGroupModel;

  factory _CategoryGroupModel.fromJson(Map<String, dynamic> json) =
      _$_CategoryGroupModel.fromJson;

  @override
  String get label;
  @override
  List<CategoryElementModel> get elements;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryGroupModelCopyWith<_$_CategoryGroupModel> get copyWith =>
      throw _privateConstructorUsedError;
}
