// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sports_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SportsModel {
  List<String?> get fitness => throw _privateConstructorUsedError;
  List<String?> get tennis => throw _privateConstructorUsedError;
  List<String?> get cinema => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SportsModelCopyWith<SportsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SportsModelCopyWith<$Res> {
  factory $SportsModelCopyWith(
          SportsModel value, $Res Function(SportsModel) then) =
      _$SportsModelCopyWithImpl<$Res, SportsModel>;
  @useResult
  $Res call(
      {List<String?> fitness, List<String?> tennis, List<String?> cinema});
}

/// @nodoc
class _$SportsModelCopyWithImpl<$Res, $Val extends SportsModel>
    implements $SportsModelCopyWith<$Res> {
  _$SportsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fitness = null,
    Object? tennis = null,
    Object? cinema = null,
  }) {
    return _then(_value.copyWith(
      fitness: null == fitness
          ? _value.fitness
          : fitness // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      tennis: null == tennis
          ? _value.tennis
          : tennis // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      cinema: null == cinema
          ? _value.cinema
          : cinema // ignore: cast_nullable_to_non_nullable
              as List<String?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SportsModelCopyWith<$Res>
    implements $SportsModelCopyWith<$Res> {
  factory _$$_SportsModelCopyWith(
          _$_SportsModel value, $Res Function(_$_SportsModel) then) =
      __$$_SportsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String?> fitness, List<String?> tennis, List<String?> cinema});
}

/// @nodoc
class __$$_SportsModelCopyWithImpl<$Res>
    extends _$SportsModelCopyWithImpl<$Res, _$_SportsModel>
    implements _$$_SportsModelCopyWith<$Res> {
  __$$_SportsModelCopyWithImpl(
      _$_SportsModel _value, $Res Function(_$_SportsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fitness = null,
    Object? tennis = null,
    Object? cinema = null,
  }) {
    return _then(_$_SportsModel(
      fitness: null == fitness
          ? _value._fitness
          : fitness // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      tennis: null == tennis
          ? _value._tennis
          : tennis // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      cinema: null == cinema
          ? _value._cinema
          : cinema // ignore: cast_nullable_to_non_nullable
              as List<String?>,
    ));
  }
}

/// @nodoc

class _$_SportsModel implements _SportsModel {
  const _$_SportsModel(
      {required final List<String?> fitness,
      required final List<String?> tennis,
      required final List<String?> cinema})
      : _fitness = fitness,
        _tennis = tennis,
        _cinema = cinema;

  final List<String?> _fitness;
  @override
  List<String?> get fitness {
    if (_fitness is EqualUnmodifiableListView) return _fitness;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fitness);
  }

  final List<String?> _tennis;
  @override
  List<String?> get tennis {
    if (_tennis is EqualUnmodifiableListView) return _tennis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tennis);
  }

  final List<String?> _cinema;
  @override
  List<String?> get cinema {
    if (_cinema is EqualUnmodifiableListView) return _cinema;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cinema);
  }

  @override
  String toString() {
    return 'SportsModel(fitness: $fitness, tennis: $tennis, cinema: $cinema)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SportsModel &&
            const DeepCollectionEquality().equals(other._fitness, _fitness) &&
            const DeepCollectionEquality().equals(other._tennis, _tennis) &&
            const DeepCollectionEquality().equals(other._cinema, _cinema));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_fitness),
      const DeepCollectionEquality().hash(_tennis),
      const DeepCollectionEquality().hash(_cinema));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SportsModelCopyWith<_$_SportsModel> get copyWith =>
      __$$_SportsModelCopyWithImpl<_$_SportsModel>(this, _$identity);
}

abstract class _SportsModel implements SportsModel {
  const factory _SportsModel(
      {required final List<String?> fitness,
      required final List<String?> tennis,
      required final List<String?> cinema}) = _$_SportsModel;

  @override
  List<String?> get fitness;
  @override
  List<String?> get tennis;
  @override
  List<String?> get cinema;
  @override
  @JsonKey(ignore: true)
  _$$_SportsModelCopyWith<_$_SportsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
